--[[
	This is the required function for your plugin to work.
	Pass the plugin name (fully embellished with spaces and caps), 
	default colour in the options (hex: RRGGBB), callback function, 
	optionally a shorthand name, and optionally a localized name.
	If you wish to use a localized name and not a short name, pass
	nil in the short name's spot.
	Note that localized name is different in that it won't be used
	for command line reference to the addon, only as its display name.
--]]
function INA_Register(name,defaultColor,func,short,locale)
	local oname = name;
	name = ItemNote_RealName(name)
	INOTE_Hooks[name] = func;
	if short then INOTE_Short[short] = name; end
	INOTE_Full[name] = locale or oname;
	if INOTE_Settings["shown"][name] == nil then
		INOTE_Settings["shown"][name] = true;
	end
	if INOTE_Settings["colors"][name] == nil then
		INOTE_Settings["colors"][name] = defaultColor;
	end
	INOTE_DefaultColors[name] = defaultColor;
	local found = false
	for i,v in ipairs(INOTE_Settings["order"]) do
		if v == name then
			found = true;
			break;
		end
	end
	if not found then
		tinsert(INOTE_Settings["order"],name);
	end
end
ItemNote_Register = INA_Register; --Backwards compatibility

--[=[
	Easily register an entry in the interface options under Item Notes.
	This takes care of localizing ItemNote's name for you as well as
	setting the header via its locale entry.
	Use one of:
	* INA_RegisterOptionsPanel(Widget Handle, Name)
	* INA_RegisterOptionsPanel(Widget Handle, Name, Addon Name[, okay Function[, cancel Function[, default Function]]])
	* INA_RegisterOptionsPanel(Widget Handle, Name[, okay Function[, cancel Function[, default Function]]])
	If calling from the OnLoad of your panel, which you probably
	should, Widget Handle would be self
	If you omit Addon Name, it will default to the Name preceeded
	by "ItemNotes-" which is the standard naming syntax for plugins.
	If Name is a table, it will assume it is a locale table, and will
	look up the Name by current locale. As in name["enUS"]
	Add parentKey="title" to your title text definition.
--]=]
function INA_RegisterOptionsPanel(panel,name,addonName,okay,cancel,default)
	if type(name) == "table" then
		name = name[GetLocale()];
	end
	if type(addonName) ~= "string" then
		addonName,okay,cancel,default = "ItemNotes-"..name,addonName,okay,cancel
	end
	panel.parent = INOTE_Locale["gui.name"];
	panel.name = name;
	panel.okay = okay;
	panel.cancel = cancel;
	panel.default = default;
	InterfaceOptions_AddCategory(panel);
	if panel.title then
		panel.title:SetText(format(INOTE_Locale["gui.ver"],
			name,GetAddOnMetadata(addonName, "Version"))
		);
	end
end

--## ATTN: Plugin functions ##--
--NOTE: All line functions will only affect original lines.
--[[
	Returns information about the line matching the given conditions.
	Use one of:
	* INA_GetLineByMatch(RegEx)
	* INA_GetLineByMatch(RegEx,Red,Green,Blue)
	* INA_GetLineByMatch(Red,Green,Blue)
	Returns: index, text, red, green, blue
	Returns nil if not found.
	NOTE: Returns the original line if another addon changed it.
--]]
local function ItemNote_SimilarColor(c1,c2)
	local c1,c2 = floor(c1*100),floor(c2*100);
	return (c1 > c2-2 and c1 < c2+2);
end
function INA_GetLineByMatch(regex,r,g,b)
	if type(regex) == "number" then
		regex,r,g,b = nil,regex,r,g;
	end
	for i=2,INOTE_OrigLines[1] do
		if INOTE_OrigLines[i][1] and INOTE_OrigLines[i][2] then
			local sl,cl = INOTE_OrigLines[i][2],INOTE_OrigLines[i][3];
			local matched = true;
			if regex and not strmatch(sl,regex) then matched = false; end
			if r and g and b and (
				not ItemNote_SimilarColor(r,cl[1]) or 
				not ItemNote_SimilarColor(g,cl[2]) or 
				not ItemNote_SimilarColor(b,cl[3])
			) then matched = false; end
			if matched then return i,sl,cl[1],cl[2],cl[3]; end
		end
	end
end

--[[
	Return information about a line by 1-based index.
	Returns: text, red, green, blue
	Returns nil if not found.
	NOTE: Returns the original line if another addon changed it.
--]]
function INA_GetLine(idx)
	if idx > 1 and INOTE_OrigLines[idx] then
		local c = INOTE_OrigLines[idx][3];
		return INOTE_OrigLines[idx][2],c[1],c[2],c[3];
	end
end

--[[
	Remove a line from the tooltip by 1-based index.
	Will only affect original lines.
	Returns true if removed successfully, false if not.
--]]
function INA_RemoveLine(idx)
	if idx > 1 and INOTE_OrigLines[idx] and INOTE_OrigLines[idx][1] then
		local tt=INOTE_tt:GetName()
		local tl,tr = _G[tt.."TextLeft"..idx],_G[tt.."TextRight"..idx];
		tl:Hide(); tr:Hide();
		tl:SetHeight(0);
		tr:SetHeight(0);
		local tl2 = _G[tt.."TextLeft"..(idx+1)];
		tl2:SetPoint("TOPLEFT",tl,"TOPLEFT")
		INOTE_OrigLines[idx][1] = false;
		return true;
	else
		--TODO: Notice addon collision.
		return false;
	end
end

--[[
	Remove a line from the tooltip by regex and/or colour.
	Use one of:
	* INA_RemoveLineByMatch(RegEx)
	* INA_RemoveLineByMatch(RegEx,Red,Green,Blue)
	* INA_RemoveLineByMatch(Red,Green,Blue)
	Colours are floats, 0.0 to 1.0.
	Returns true if removed successfully, false if not.
--]]
function INA_RemoveLineByMatch(...)
	local idx = INA_GetLineByMatch(...);
	if idx then
		return INA_RemoveLine(idx);
	else
		return false;
	end
end

--[[
	Change a line, given by 1-based index.
	Use one of:
	* INA_ChangeLine(Index,Replacement,Red,Green,Blue)
	* INA_ChangeLine(Index,Replacement)
	* INA_ChangeLine(Index,Red,Green,Blue)
--]]
function INA_ChangeLine(idx,text,r,g,b)--,wrap)
	if idx > 1 and INOTE_OrigLines[idx] and INOTE_OrigLines[idx][1] then
		if type(text) == "number" then
			if type(r) == "number" then
				--text,r,g,b,wrap = nil,text,r,g,b;
				text,r,g,b = nil,text,r,g;
			elseif r == nil then
				--text,r,g,b,wrap = nil,nil,nil,nil,text;
				return;
			end
		--elseif g == nil then
			--r,g,b,wrap = nil,nil,nil,r;
		end
		local tt=INOTE_tt:GetName()
		local tl = _G[tt.."TextLeft"..idx];
		if text then tl:SetText(text); end
		if r and g and b then tl:SetTextColor(r,g,b); end
		--if wrap then Wut(); end
		return true;
	else
		--TODO: Notice addon collision.
		return false;
	end
end

--[[
	Change the first line that matches the given conditions.
	Use: INA_ChangeLineByMatch(Conditions,Changes)
	Where Conditions can be:
	* Regex,Red,Green,Blue
	* Regex
	* Reg,Green,Blue
	Where Changes can be:
	* Replacement,Red,Green,Blue
	* Replacement
	* Red,Green,Blue
--]]
function INA_ChangeLineByMatch(regex,mr,mg,mb,text,r,g,b)
	if type(regex) == "number" then
		regex,mr,mg,mb,text,r,g,b = nil,regex,mr,mg,mb,text,r,g;
	elseif type(mr) == "string" then
		mr,mg,mb,text,r,g,b = nil,nil,nil,mr,mg,mb,text;
	end
	if type(text) == "number" then
		text,r,g,b = nil,text,r,g;
	end
	local idx = INA_GetLineByMatch(regex,mr,mg,mb);
	if idx then
		return INA_ChangeLine(idx,text,mr,mg,mb);
	else
		return false;
	end
end

--[[
	Pass an item ID (likely how you'll be storing them in your DB)
	to easily cache its data and make sure that it will be there
	when you want to GetItemInfo()
--]]
function INA_CacheItem(id)
	if GetItemInfo(id) == nil then
		INOTE_GameTooltip:SetHyperlink("item:"..id..":0:0:0:0:0:0:0");
		--while GetItemInfo(id) == nil do end --Block
		INOTE_GameTooltip:Hide();
	end
end
