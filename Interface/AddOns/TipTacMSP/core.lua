local gtt = GameTooltip;

-- Variables
local ttm = CreateFrame("Frame","TipTacMSP");
local current = {};

-- ACE Einbinden
local L = LibStub("AceLocale-3.0"):GetLocale("TipTacMSP", true)
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")

-- Allow these to be accessed externally from other addons
ttm.current = current;

ttm:Hide();

-- Constants, need to be seperated in a extra file.
local rolePlayStyle = {
	["0"] = { code = "0", text = L["undefined"]},
	["1"] = { code = "1", text = L["Normal"]},
	["2"] = { code = "2", text = L["Casual"]},
	["3"] = { code = "3", text = L["Full-Time"]},
	["4"] = { code = "4", text = L["Beginner"]}
}

local rolePlayStatus = {
	["0"] = { code = "0", text = L["undefined"]},
	["1"] = { code = "0", text = L["out of Character"]},
	["2"] = { code = "0", text = L["in Character"]},
	["3"] = { code = "0", text = L["Looking For Contact"]},
	["4"] = { code = "0", text = L["Storyteller"]}
}

ttm.options = TipTacMSP.options

local mainAddon = "TipTac";

--------------------------------------------------------------------------------------------------------
--                                           Gather MSP
--------------------------------------------------------------------------------------------------------

function setDefault(value, default)
	if value ~= nil then
		return value
	else
		return default
	end
end

function addToTableIf(bool, tabelle, item)
	if (bool) then
		table.insert(tabelle, item);
	end
end

function ttm:GetMSPField(playername, field)
	if _G.msp ~= nil then
		if (_G.msp.char[playername] ~= nil) then
			if (_G.msp.char[playername].field[field] ~= "") then
				return _G.msp.char[playername].field[field]
			end
		end
		return nil
	elseif _G.msptrp ~= nil then
		if (_G.msptrp.char[playername] ~= nil) then
			if (_G.msptrp.char[playername].field[field] ~= "") then
				return _G.msptrp.char[playername].field[field]
			end
		end
		return nil
	else
		return "No MSP-Compatible Addon found"
	end
end

function ttm:GetCharacterFields(playername, field)
	if _G.msp ~= nil then
		_G.msp.Request(_G.msp, playername, field);
	end
	if _G.msptrp ~= nil then
		_G.msptrp.Request(_G.msptrp, playername, field);
	end
end

function ttm:TipTacMSPFindConfigWindowAndAddOwnConfig()


	if TipTacMSP_Config == nil then
		TipTacMSP_Config = {}
	end
	-- "Workaround" to add the Options to the TipTac-Options-Menu
	TipTacOptions.options[2][#TipTacOptions.options[2] + 1] =
		{ type = "Check", var = "showMSPName", label = L["Show MSP Name"], tip = L["Shows the MSP Name in the Game Tooltip."]};
	TipTacOptions.options[2][#TipTacOptions.options[2] + 1] =
		{ type = "Check", var = "showMSPState", label = L["Show MSP Status"], tip = L["Shows the MSP Status in the Game Tooltip."]};
	TipTacOptions.options[2][#TipTacOptions.options[2] + 1] =
		{ type = "Check", var = "showMSPStyle", label = L["Show MSP RP Style"], tip = L["Shows the MSP Roleplay Style in the Game Tooltip."]};
	TipTacOptions.options[2][#TipTacOptions.options[2] + 1] =
		{ type = "Check", var = "showMSPClient", label = L["Show MSP Client"], tip = L["Shows the MSP Client(s) in the Game Tooltip."]};
	TipTacOptions.options[2][#TipTacOptions.options[2] + 1] =
		{ type = "Check", var = "showMSPCurrent", label = L["Show MSP Currently"], tip = L["Shows the text in the Field for current."]};
	TipTacOptions.options[2][#TipTacOptions.options[2] + 1] =
		{ type = "Check", var = "showMSPDescExists", label = L["Show MSP Physical Description exists"], tip = L["Shows the Information of a detailed Physical Description exists."]};
	
	-- Set Defaults in this "Workaround"
	TipTac_Config.showMSPState = setDefault(TipTac_Config.showMSPState, true);
	TipTac_Config.showMSPName = setDefault(TipTac_Config.showMSPName, true);
	TipTac_Config.showMSPClient = setDefault(TipTac_Config.showMSPClient, false);
	TipTac_Config.showMSPStyle = setDefault(TipTac_Config.showMSPStyle, false);
	TipTac_Config.showMSPCurrent = setDefault(TipTac_Config.showMSPCurrent, false);
	TipTac_Config.showMSPDescExists = setDefault(TipTac_Config.showMSPDescExists, false);
	
	-- Register Main page.
	AceConfigDialog:AddToBlizOptions(mainAddon, mainAddon, nil, "core");
	pages = {};
	for key, value in pairs(TipTacMSP.options.args) do
		if key ~= "core" then
			table.insert(pages, {
				name = value.name,
				key = key,
				order = value.order
			});
		end;
	end;
	table.sort(pages, function(w1, w2)
        if w1.order < w2.order then
            return true
        end
    end);
	for key, value in pairs(pages) do
		AceConfigDialog:AddToBlizOptions(mainAddon, value.name, mainAddon, value.key);
	end
	AceConfig:RegisterOptionsTable(mainAddon, TipTacMSP.options);
end

gtt:HookScript("OnTooltipSetUnit",function(self,...)
	-- Get the unit -- Check the UnitFrame unit if this tip is from a concated unit, such as "targettarget".
	local _, unit = self:GetUnit();
	if (not unit) then
		local mFocus = GetMouseFocus();
		if (mFocus) and (mFocus.unit) then
			unit = mFocus.unit;
		end
	end
	
	-- No Unit or not a Player
	if (not unit) or (not UnitIsPlayer(unit)) then
		return;
	end
	
	-- Wipe Current Record
	wipe(current);
	current.unit = unit;
	current.name = UnitName(unit);
	current.guid = UnitGUID(unit);
	
	-- Alle Felder die benötigt werden zusammenfassen und dann abrufen.
	mspfields = {};
	addToTableIf(TipTac_Config.showMSPName, mspfields, "NA");
	addToTableIf(TipTac_Config.showMSPState, mspfields, "FC");
	addToTableIf(TipTac_Config.showMSPStyle, mspfields, "FR");
	addToTableIf(TipTac_Config.showMSPClient, mspfields, "VA");
	addToTableIf(TipTac_Config.showMSPCurrent, mspfields, "CU");
	addToTableIf(TipTac_Config.showMSPDescExists, mspfields, "DE");

	ttm:GetCharacterFields(current.name, mspfields);
	
	current.msp_na = ttm:GetMSPField(current.name, "NA");
	current.msp_fc = ttm:GetMSPField(current.name, "FC");
	current.msp_fr = ttm:GetMSPField(current.name, "FR");
	current.msp_va = ttm:GetMSPField(current.name, "VA");
	current.msp_cu = ttm:GetMSPField(current.name, "CU");
	current.msp_de = ttm:GetMSPField(current.name, "DE");

	if (TipTac_Config.showMSPName) then
		if ((current.msp_na ~= nil) and (current.msp_na ~= current.name)) then
			self:AddLine(L["MSP-Name"]..": "..current.msp_na);
		end
	end
	if (TipTac_Config.showMSPState) then
		if (current.msp_fc ~= nil) then
			if (rolePlayStatus[current.msp_fc] ~= nil) then
				self:AddLine(L["MSP-Status"]..": "..rolePlayStatus[current.msp_fc].text);
			else
				self:AddLine(L["MSP-Status"]..": "..current.msp_fc);
			end
		end
	end
	if (TipTac_Config.showMSPStyle) then
		if (current.msp_fr ~= nil) then
			if (rolePlayStyle[current.msp_fr] ~= nil) then
				self:AddLine(L["MSP-Style"]..": "..rolePlayStyle[current.msp_fr].text);
			else
				self:AddLine(L["MSP-Style"]..": "..current.msp_fr);
			end
		end
	end
	if (TipTac_Config.showMSPClient) then
		if (current.msp_va ~= nil) then
			self:AddLine(L["MSP-Client"]..": "..current.msp_va);
		end
	end
	if (TipTac_Config.showMSPCurrent) then
		if (current.msp_cu ~= nil) then
			self:AddLine(L["MSP-Currently"]..": "..current.msp_cu);
		end
	end
	if (TipTac_Config.showMSPDescExists) then
		if (current.msp_va ~= nil) then
			if (current.msp_de ~= nil) then
				self:AddLine(L["MSP-Description"]..": "..L['Yes']);
			else
				self:AddLine(L["MSP-Description"]..": "..L['No']);
			end
		end
	end
end);

ttm:TipTacMSPFindConfigWindowAndAddOwnConfig();