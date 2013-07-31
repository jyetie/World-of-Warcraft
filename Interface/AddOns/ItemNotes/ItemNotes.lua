--## Saved Variables ##--
INOTE_Notes = {}
INOTE_Settings = {
	["colors"] = {
		["note"] = "f300dd"
	}
	,["shown"] = {
		["note"] = true
	}
	,["order"] = {"note"}
};

--## Globals ##--
INOTE_Loaded = false

--## Internal ##--
do
	local tmp = GetLocale();
	if not INOTE_Locale[tmp] then tmp = "enUS"; end
	for k,v in pairs(INOTE_Locale) do
		if k ~= tmp then wipe(INOTE_Locale[k]); end
	end
	INOTE_Locale = INOTE_Locale[tmp];
end
INOTE_EditingColor,INOTE_Hooks,INOTE_Short,INOTE_Full = nil,{},{},{["note"]=INOTE_Locale["note"]};

--## Convenience ##--
function ItemNote_RealName(name)
	return strlower(gsub((INOTE_Short[name] or name)," ",""));
end

function ItemNote_GetID(ilink)
	local _,_,iid = strfind(ilink,"|Hitem:(%d+):")
	return tonumber(iid)
end

function ItemNote_Hex2RGB(hex)
	return tonumber(strsub(hex,1,2),16)/255,
		tonumber(strsub(hex,3,4),16)/255,
		tonumber(strsub(hex,5,6),16)/255;
end

function ItemNote_RGB2Hex(r,g,b)
	r = floor(r*255); g = floor(g*255); b = floor(b*255);
	rgb = {bit.rshift(bit.band(r,0xf0),4),bit.band(r,0xf),
		bit.rshift(bit.band(g,0xf0),4),bit.band(g,0xf),
		bit.rshift(bit.band(b,0xf0),4),bit.band(b,0xf)};
	local col = "";
	for i=1,6,1 do
		if(rgb[i] < 10) then col = col..rgb[i];
		elseif(rgb[i] == 10) then col = col.."a";
		elseif(rgb[i] == 11) then col = col.."b";
		elseif(rgb[i] == 12) then col = col.."c";
		elseif(rgb[i] == 13) then col = col.."d";
		elseif(rgb[i] == 14) then col = col.."e";
		elseif(rgb[i] == 15) then col = col.."f";
		end
	end
	return col
end

--## Loader ##--
function ItemNote_Load()
	UpdateSave()
	if(GameTooltip:GetScript("OnTooltipSetItem")) then
		GameTooltip:HookScript("OnTooltipSetItem",ItemNote_AddInfo);
	else
		GameTooltip:SetScript("OnTooltipSetItem",ItemNote_AddInfo);
	end
	if(ItemRefTooltip:GetScript("OnTooltipSetItem")) then
		ItemRefTooltip:HookScript("OnTooltipSetItem",ItemNote_AddInfo);
	else
		ItemRefTooltip:SetScript("OnTooltipSetItem",ItemNote_AddInfo);
	end
	if(GameTooltip:GetScript("OnHide")) then
		GameTooltip:HookScript("OnHide",ItemNote_FixToolTip);
	else
		GameTooltip:SetScript("OnHide",ItemNote_FixToolTip);
	end
	if(ItemRefTooltip:GetScript("OnHide")) then
		ItemRefTooltip:HookScript("OnHide",ItemNote_FixToolTip);
	else
		ItemRefTooltip:SetScript("OnHide",ItemNote_FixToolTip);
	end
	INOTE_Loaded = true
end

--## Guts ##--
INOTE_tt,INOTE_OrigLines = nil,{};
function ItemNote_FixToolTip(this)
	local ix,tt = 2,this:GetName()
	while _G[tt.."TextLeft"..ix] do
		local tl = _G[tt.."TextLeft"..ix];
		local anc,ato,apt = tl:GetPoint(1)
		if apt == "TOPLEFT" then
			tl:SetPoint(anc,ato,"BOTTOMLEFT")
		end
		ix = ix+1;
	end
end

function ItemNote_AddInfo(this)
	local _,link = this:GetItem();
	
	wipe(INOTE_OrigLines);
	
	--Fix line removals & mark what lines are ok
	local tt = this:GetName()
	INOTE_OrigLines[1] = this:NumLines();
	for i=2,INOTE_OrigLines[1] do
		local tl = _G[tt.."TextLeft"..i];
		local anc,ato,apt = tl:GetPoint(1)
		if apt == "TOPLEFT" then
			tl:SetPoint(anc,ato,"BOTTOMLEFT")
		end
		INOTE_OrigLines[i] = {true,tl:GetText(),{tl:GetTextColor()}};
	end
	
	if link then
		local iname,_,irare,ilvl,imin,itype,isubtype,istack,iequloc,itex,isell = GetItemInfo(link);
		local iid = ItemNote_GetID(link)
		if ilvl then
			for i,v in ipairs(INOTE_Settings["order"]) do
				if INOTE_Settings["shown"][v] then
					local r,g,b = ItemNote_Hex2RGB(INOTE_Settings["colors"][v])
					if(v == "note") then
						if(INOTE_Notes[iid]) then
							this:AddLine("Note: "..INOTE_Notes[iid],r,g,b,true);
						end
					elseif INOTE_Hooks[v] then
						INOTE_tt = this
						local txt,wrap = INOTE_Hooks[v](iname,iid,irare,ilvl,imin,itype,isubtype,istack,iequloc,itex,isell);
						if txt and strtrim(txt) ~= "" then
							local lines = {strsplit("\n",txt)}
							for i,v in ipairs(lines) do
								this:AddLine(v,r,g,b,wrap);
							end
						end
					end
				end
			end
			this:Show();
		end
	end
end

--## UI Functions ##--
function ItemNote_ShowOrderUI(list)
	local kids,last,prev = {list:GetChildren()},#(INOTE_Settings["order"]),nil
	for i,v in ipairs(INOTE_Settings["order"]) do
		local entry
		if kids[i] then
			entry = kids[i];
			entry:Show();
			entry.up:Show();
			entry.down:Show();
		else entry = CreateFrame("Frame",nil,list,"INOTE_Plugin");
		end
		entry.pluginName = v;
		entry.index = i;
		entry.text:SetText(INOTE_Full[v]);
		entry.color.c:SetTexture(ItemNote_Hex2RGB(INOTE_Settings["colors"][v]))
		entry.shown:SetChecked(INOTE_Settings["shown"][v]);
		if i == 1 then
			entry.up:Hide();
			--XXX: If only I could anchor the scrollchild I wouldn't need the offsets!
			entry:SetPoint("TOPLEFT",4,-5);
			entry:SetPoint("TOPRIGHT",0,-5);
		else
			if i == last then entry.down:Hide(); end
			entry:SetPoint("TOPLEFT",prev,"BOTTOMLEFT");
			entry:SetPoint("TOPRIGHT",prev,"BOTTOMRIGHT");
		end
		if i % 2 == 0 then
			entry.bg:SetTexture(0.27,0.27,0.27,1);
			entry.origColor = {0.27,0.27,0.27,1};
		else
			entry.bg:SetTexture(0,0,0,0);
			entry.origColor = {0,0,0,0};
		end
		prev = entry;
	end
	for i=last+1,#(kids) do
		kids[i].pluginName = nil;
		kids[i].index = nil;
		kids[i]:Hide();
	end
	list:SetHeight(24*last);
end

function ItemNote_Select(entry)
	if type(entry) == "string" then
		local tmp = {INOTE_OptionsOrderChild:GetChildren()};
		for i,v in ipairs(tmp) do
			if v.pluginName == entry then
				entry = v;
				break;
			end
		end
		if type(entry) == "string" then return; end
	end
	if INOTE_EditingColor then
		local tmp = INOTE_EditingColor.origColor;
		INOTE_EditingColor.bg:SetTexture(tmp[1],tmp[2],tmp[3],tmp[4]);
	end
	entry.bg:SetTexture(0.67,0.60,0,1);
	INOTE_EditingColor = entry;
end

function ItemNote_Unselect()
	if INOTE_EditingColor then
		local tmp = INOTE_EditingColor.origColor;
		INOTE_EditingColor.bg:SetTexture(tmp[1],tmp[2],tmp[3],tmp[4]);
		INOTE_EditingColor = nil;
	end
end

function ItemNote_UpdateColor()
	if INOTE_EditingColor then
		INOTE_EditingColor.color.c:SetTexture(INOTE_OptionsColorSelect:GetColorRGB());
	end
end

function ItemNote_Tex2Hex(tex)
	local hex = strmatch(tex,"Color%-(%x?%x%x%x%x%x%x%x)")
	if not hex then return nil end
	if strlen(hex) == 7 then return "0"..strsub(hex,1,-3);
	else return strsub(hex,1,-3);
	end
end

function ItemNote_Tex2RGB(tex)
	local hex = ItemNote_Tex2Hex(tex);
	if hex then return ItemNote_Hex2RGB(hex); end
end

--[[function ItemNote_ToggleShown(entry)
end--]]

local function ItemNote_SwapEntry(e1,e2)
	local tmp = {
		e1.text:GetText(),
		ItemNote_Tex2Hex(e1.color.c:GetTexture()),
		e1.shown:GetChecked(),
		--e1:GetBackdrop()
	};
	e1.pluginName,e2.pluginName = e2.pluginName,e1.pluginName;
	e1.text:SetText(e2.text:GetText());
	e1.color.c:SetTexture(ItemNote_Tex2RGB(e2.color.c:GetTexture()));
	e1.shown:SetChecked(e2.shown:GetChecked());
	--e1:SetBackdrop(e1:GetBackdrop());
	e2.text:SetText(tmp[1]);
	e2.color.c:SetTexture(ItemNote_Hex2RGB(tmp[2]));
	e2.shown:SetChecked(tmp[3]);
	--e2:SetBackdrop(tmp[4]);
end

function ItemNote_OrderUp(entry)
	local id = entry.index;
	if id == 1 then return; end
	local kids = {INOTE_OptionsOrderChild:GetChildren()};
	ItemNote_SwapEntry(kids[id],kids[id-1]);
end

function ItemNote_OrderDown(entry)
	local kids,id = {INOTE_OptionsOrderChild:GetChildren()},entry.index;
	if id == #(kids) then return; end
	ItemNote_SwapEntry(kids[id],kids[id+1]);
end

function ItemNote_SaveOptions(options)
	local kids = {INOTE_OptionsOrderChild:GetChildren()};
	wipe(INOTE_Settings["order"]);
	for _,v in pairs(kids) do
		local i = v.index;
		if i then
			local name = v.pluginName;
			INOTE_Settings["order"][i] = name;
			--Returns 1 or nil, and we don't want to delete it!
			if v.shown:GetChecked() then
				INOTE_Settings["shown"][name] = true;
			else
				INOTE_Settings["shown"][name] = false;
			end
			INOTE_Settings["colors"][name] = ItemNote_Tex2Hex(v.color.c:GetTexture());
		end
	end
	ItemNote_Unselect();
end

function ItemNote_ResetOptions(options)
	ItemNote_Unselect();
end

INOTE_DefaultColors={};
function ItemNote_DefaultOptions(options)
	ItemNote_Unselect();
	for k,v in pairs(INOTE_DefaultColors) do
		INOTE_Settings["colors"][k] = v;
		INOTE_Settings["shown"][k] = true;
	end
	ItemNote_ShowOrderUI(INOTE_OptionsOrderChild);
end

function ItemNote_OpenEditor(header,text,saveFunc,closeFunc)
	INOTE_EditPopup.save,INOTE_EditPopup.close = saveFunc,closeFunc;
	INOTE_EditPopupTitle:SetText(header or "");
	INOTE_EditPopupBox:SetText(text or "");
	INOTE_EditPopup:Show();
	INOTE_EditPopupBox:HighlightText();
end

function ItemNote_EditSave(edit)
	edit:Hide();
	if edit.save then edit.save(edit.box:GetText()); end
end

function ItemNote_EditCancel(edit)
	edit:Hide();
	if edit.close then edit.close(); end
end

--## For /note ##--
local function ItemNote_TooltipInfo()
	if GameTooltip:IsShown() then
		return GameTooltip:GetItem();
	elseif ItemRefTooltip:IsShown() then
		return ItemRefTooltip:GetItem();
	else
		return nil;
	end
end

function ItemNote_AddNote(note)
	local name,link = ItemNote_TooltipInfo();
	if name then
		local iid = ItemNote_GetID(link)
		if note ~= "" then
			INOTE_Notes[iid] = note;
		else
			INOTE_Notes[iid] = nil;
		end
	end
end

--## For /notee ##--
function ItemNote_EditNote(_)
	local name,link = ItemNote_TooltipInfo();
	if name then
		local iid = ItemNote_GetID(link)
		ItemNote_OpenEditor(format(INOTE_Locale["note.edit"],name),INOTE_Notes[iid],function(note)
			if note ~= "" then
				INOTE_Notes[iid] = note;
			else
				INOTE_Notes[iid] = nil;
			end
		end);
	end
end

--## Settings ##--
function ItemNote_Setting(set)
	local _,_,what,how = strfind(set,"([%a ]+) *[ =] *(.+)");
	if what then
		what = strtrim(what)
		how = strtrim(how)
		local test,etc = strsplit(" ",what)
		if test == "order" or test == "help" or test == "list" then
			what = test
			how = strtrim((etc or "").." "..how)
		end
	else
		what = strtrim(set)
		how = ""
	end
	
	function prn(str)
		DEFAULT_CHAT_FRAME:AddMessage(str);
	end
	
	if how == "show" then
		if what == "help" then
			prn(INOTE_Locale["help.show"]);
		else
			local rn = ItemNote_RealName(what)
			INOTE_Settings["shown"][rn] = true;
			prn(format(INOTE_Locale["cli.show"],INOTE_Full[rn]));
		end
	elseif how == "hide" then
		if what == "help" then
			prn(INOTE_Locale["help.hide"]);
		else
			local rn = ItemNote_RealName(what)
			INOTE_Settings["shown"][rn] = false;
			prn(format(INOTE_Locale["cli.hide"],INOTE_Full[rn]));
		end
	elseif how == "shown" then
		if what == "help" then
			prn(INOTE_Locale["help.shown"]);
		else
			local rn = ItemNote_RealName(what)
			if INOTE_Settings["shown"][rn] ~= nil and not tContains(INOTE_Settings["order"],rn) then
				prn(format(INOTE_Locale["cli.shown.noOrder"],INOTE_Full[rn]));
			elseif INOTE_Settings["shown"][rn] then
				prn(format(INOTE_Locale["cli.shown.shown"],INOTE_Full[rn]));
			elseif INOTE_Settings["shown"][rn] ~= nil then
				prn(format(INOTE_Locale["cli.shown.hidden"],INOTE_Full[rn]));
			else
				prn(format(INOTE_Locale["cli.shown.noExist"],INOTE_Full[rn]));
			end
		end
	elseif how == "color" then
		if what == "help" then
			prn(INOTE_Locale["help.color"]);
		else
			--ItemNote_OpenColor(ItemNote_RealName(what))
			InterfaceOptionsFrame_OpenToCategory(INOTE_Locale["gui.name"]);
			ItemNote_Select(ItemNote_RealName(what));
		end
	elseif strmatch(how,"%x%x%x%x%x%x") then
		local rn = ItemNote_RealName(what)
		INOTE_Settings["colors"][rn] = how;
		prn(format(INOTE_Locale["cli.color"],"|cff"..how..INOTE_Full[rn].."|r"));
	elseif what == "order" then
		if how == "" then
			local i = 0
			for k,v in pairs(INOTE_Settings["shown"]) do
				if not tContains(INOTE_Settings["order"],k) then
					tinsert(INOTE_Settings["order"],k)
					i = i+1
				end
			end
			prn(format(INOTE_Locale["cli.order.missing"],i))
		else
			INOTE_Settings["order"] = {strsplit(",",how)}
			for i,v in ipairs(INOTE_Settings["order"]) do
				INOTE_Settings["order"][i] = ItemNote_RealName(strtrim(v))
			end
			prn(INOTE_Locale["cli.order.reset"])
		end
	elseif what == "help" and how == "order" then
		prn(INOTE_Locale["help.order"]);
	elseif what == "list" then
		local tmp,tl2s = {},{}
		for k,v in pairs(INOTE_Short) do
			tl2s[v] = k
		end
		function DispThing(x,v)
			local col,msg
			if INOTE_Settings["shown"][v] and (v == "note" or INOTE_Hooks[v] ~= nil) then
				col = "00ff00";
				msg = INOTE_Locale["cli.list.shown"];
			elseif v ~= "note" and INOTE_Hooks[v] == nil then
				col = "ff0000";
				msg = INOTE_Locale["cli.list.missing"];
			else
				col = "ffff00";
				msg = INOTE_Locale["cli.list.hidden"];
			end
			local t = "";
			if tl2s[v] then t = " ("..tl2s[v]..")"; end
			prn(x..") |cff"..col..INOTE_Full[v]..t.." - "..msg.."|r")
		end
		for i,v in ipairs(INOTE_Settings["order"]) do
			tmp[v]=true
			DispThing(i,v)
		end
		for k,v in pairs(INOTE_Settings["shown"]) do
			local col
			if not tmp[k] then
				DispThing("X",k)
			end
		end
	elseif what == "help" and how == "list" then
		prn(INOTE_Locale["help.list"])
	elseif what == "help" then
		local tmp = strsplit("\n",INOTE_Locale["cli.help"]);
		for _,v in ipairs(tmp) do
			prn(v);
		end
	else
		InterfaceOptionsFrame_OpenToCategory(INOTE_Locale["gui.name"]);
	end
end

--## Slash registry ##--
SlashCmdList["INOTESET"] = ItemNote_Setting;
SLASH_INOTESET1 = "/ins";

SlashCmdList["INOTE"] = ItemNote_AddNote;
SLASH_INOTE1 = "/note";

SlashCmdList["INOTEE"] = ItemNote_EditNote;
SLASH_INOTEE1 = "/notee";

--## Bindings info ##--
BINDING_HEADER_INOTE = INOTE_Locale["gui.name"];
BINDING_NAME_INOTE = INOTE_Locale["gui.editNote"];
