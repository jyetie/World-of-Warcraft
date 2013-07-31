--------------------------------------------------------------------------------
-- ArchIndiana.lua
--
-- Author: Rahldarken (Madoran)
-- Date:   1/10/2010
--

-- "Constants"
local ARCHINDIANA_NAME = "ArchIndiana";
local ARCHINDIANA_SLASHCOMMAND = "archindiana";
local ARCHINDIANA_TITLECOLOR = "ffff8000";

local ARCHINDIANA_RACEFRAME_HEIGHT = 30;

local SURVEY_SPELLID = 80451;
-- There is a different one for each rank. Using the
-- first skill to get the localized name and then
-- use API calls that work of spell name to get the
-- "latest" one.
local ARCHAEOLOGY_SPELLID = 78670;

-- Values copied from the Blizzard_ArchaeologyUI.lua
local ARCHAEOLOGY_MAX_STONES = 4;
local ARCHAEOLOGY_MAX_RACES = 12;

-- Saved Variables
ArchIndiana_Settings = {
	MinimapPos = 45, -- default position of the minimap icon in degrees
	Show = true, -- Remembers whether the user wanted the window shown
	CombatHide = true, -- Hides the window during combat
	LockWindow = false, -- Disables the ability to move the window
	Debug = false, -- Toggles debug messages in the General chat window
	ShowZoneOnlyRaces = false, -- Displays only the races found in this zone
	
	-- Global array used to store the number of keystones
	-- the user added to each race
	Keystones = {},
	
	-- Saves zone names where the user previously acquired 
	-- each race fragments
	ZoneHistory = {}
}

function ArchIndianaFrame_OnLoad(self)

	SlashCmdList["ARCHINDIANA"] = ArchIndianaFrame_SlashCommand;
	SLASH_ARCHINDIANA1 = "/"..ARCHINDIANA_SLASHCOMMAND;
	
	local name = GetArchaeologyInfo();
	self.titleFrame.title:SetText(name);
	
	self:RegisterForDrag("LeftButton");
	self.titleFrame:RegisterForDrag("LeftButton");
	
	self:RegisterEvent("ADDON_LOADED");
	
	-- Player information is not fully loaded when
	-- the addon is loaded so register this event so
	-- we can do initial data load.
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	self:RegisterEvent("PLAYER_ALIVE");
	
	-- Player enter/leaves combat
	self:RegisterEvent("PLAYER_REGEN_DISABLED");
	self:RegisterEvent("PLAYER_REGEN_ENABLED");
	
	-- Artifact info changes. Such as when a new item is started. Keystone added.
	self:RegisterEvent("ARTIFACT_UPDATE"); --
	
	local name, _, icon, _, _, _, _, _, _ = GetSpellInfo(SURVEY_SPELLID);
	
	self.surveyButton:SetAttribute("type", "spell");
	self.surveyButton:SetAttribute("spell", name);
	self.surveyButton.icon:SetTexture(icon);
	
	local name, _, icon, _, _, _, _, _, _ = GetSpellInfo(ARCHAEOLOGY_SPELLID);
	
	self.tradeButton:SetAttribute("type", "spell");
	self.tradeButton:SetAttribute("spell", name);
	self.tradeButton.icon:SetTexture(icon);
	
	ArchIndiana_MinimapButton.icon:SetTexture(icon);
end

function ArchIndianaFrame_SlashCommand(msg, editbox)
	if msg == "debug" then
		ArchIndiana_Settings.Debug = not ArchIndiana_Settings.Debug;
		ArchIndiana_Print("Debug mode set to: ".. tostring(ArchIndiana_Settings.Debug));
	elseif msg == "center" then
		ArchIndianaFrame_ResetWindow();
	elseif msg == "help" then
		-- One of only a couple places that doesn't use localized text
		ArchIndiana_Print("");
		ArchIndiana_Print("Commands:");
		ArchIndiana_Print("   /"..ARCHINDIANA_SLASHCOMMAND.." - toggles the windows show/hide");
		ArchIndiana_Print("   /"..ARCHINDIANA_SLASHCOMMAND.." center - shows and sets the window in the center");
		ArchIndiana_Print("   /"..ARCHINDIANA_SLASHCOMMAND.." help - list of commands");
		ArchIndiana_Print("");
	else
		ArchIndiana_ToggleVisible();
	end
end

function ArchIndianaFrame_ResetWindow()
	if not ArchIndianaFrame:IsVisible() then
		ArchIndiana_ToggleVisible();
	end
	
	ArchIndianaFrame:ClearAllPoints();
	ArchIndianaFrame:SetPoint("CENTER", "UIParent");
end

function ArchIndiana_ToggleVisible()
	if ArchIndianaFrame:IsVisible() then
		ArchIndianaFrame:Hide();
		
		ArchIndiana_Settings.Show = false;
	else
		ArchIndianaFrame:Show();
		
		ArchIndiana_Settings.Show = true;
	end
end

function ArchIndianaFrame_StartMoving()
	if not ArchIndiana_Settings.LockWindow then
		ArchIndianaFrame:StartMoving();
	end
end

function ArchIndiana_ToggleCombatHide()
	ArchIndiana_Settings.CombatHide = not ArchIndiana_Settings.CombatHide;
end

function ArchIndiana_ToggleLockWindow()
	ArchIndiana_Settings.LockWindow = not ArchIndiana_Settings.LockWindow;
end

function ArchIndiana_ToggleShowZoneOnlyRaces()
	ArchIndiana_Settings.ShowZoneOnlyRaces = not ArchIndiana_Settings.ShowZoneOnlyRaces;
	
	ArchIndianaFrame_LoadRaces(ArchIndianaFrame);
	ArchIndianaFrame_UpdateRaces(ArchIndianaFrame);
end

function ArchIndianaFrame_OnEvent(self, event, arg1, ...)
	--ArchIndiana_Print('ArchIndiana_OnEvent: ' ..  event);
	
	if event == "SKILL_LINES_CHANGED" then
		ArchIndianaFrame_LoadRaces(self);
		ArchIndianaFrame_UpdateRank(self);
	elseif event == "PLAYER_ENTERING_WORLD" then
		-- These Events are registered here because things like BAG_UPDATE are
		-- called many times during loading and we are only interested in them
		-- as a result of user actions.
		
		-- Profession rank changes.
		self:RegisterEvent("SKILL_LINES_CHANGED");
		-- Fragments number changes
		self:RegisterEvent("CURRENCY_DISPLAY_UPDATE");
		
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA"); --
		
		-- ### Other Events the Blizzard Arch UI monitors ### --
		-- Triggers when one goes to the Artifact Completed page?
		self:RegisterEvent("ARTIFACT_HISTORY_READY"); --
		-- Artifact is Solved.
		self:RegisterEvent("ARTIFACT_COMPLETE"); --
		-- Got this when the dig sites change.
		self:RegisterEvent("ARTIFACT_DIG_SITE_UPDATED"); --
		-- Any Bag change.
		-- Needed to detect Artifact progress change after solving.
		self:RegisterEvent("BAG_UPDATE");
		-- ### --
	
		-- Need these here if player does a /reload since 
		-- the PLAYER_ALIVE event does not fire when that
		-- happens. Conversely, when logging in this data
		-- is not set during PLAYER_ENTERING_WORLD so we
		-- do it again during that event.
		ArchIndianaFrame_LoadRaces(self);
		ArchIndianaFrame_UpdateRank(self);
		ArchIndianaFrame_UpdateRaces(self);
	elseif event == "PLAYER_ALIVE" then
		ArchIndianaFrame_LoadRaces(self);
		ArchIndianaFrame_UpdateRank(self);
		ArchIndianaFrame_UpdateRaces(self);
	elseif event == "PLAYER_REGEN_DISABLED" then
		if ArchIndiana_Settings.CombatHide then
			ArchIndianaFrame:Hide();
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		if ArchIndiana_Settings.Show then
			ArchIndianaFrame:Show();
		end
	elseif event == "ADDON_LOADED" and arg1 == ARCHINDIANA_NAME then
		ArchIndiana_Debug("Addon Loaded");
		ArchIndiana_Debug("  MinimapPos = "..ArchIndiana_Settings.MinimapPos);
		ArchIndiana_Debug("  Show = "..tostring(ArchIndiana_Settings.Show));
		ArchIndiana_Debug("  Debug = "..tostring(ArchIndiana_Settings.Debug));
		ArchIndiana_MinimapButton_Reposition()
		
		if ArchIndiana_Settings.Show then
			ArchIndianaFrame:Show();
		end
		
		-- Because these options were added in later versions, they
		-- aren't in the saved-state for people that used an older
		-- version. By checking for nil, I can set a default for
		-- those people.
		if ArchIndiana_Settings.CombatHide == nil then
			ArchIndiana_Settings.CombatHide = true;
		end
		
		if ArchIndiana_Settings.LockWindow == nil then
			ArchIndiana_Settings.LockWindow = false;
		end
		
		if ArchIndiana_Settings.Keystones == nil then
			ArchIndiana_Settings.Keystones = {};
		end
		
		if ArchIndiana_Settings.ZoneHistory == nil then
			ArchIndiana_Settings.ZoneHistory = {};
		end
		
		ArchIndiana_Print('Loaded.');
	elseif event == "ARTIFACT_UPDATE" then
		local hasNewRace = ArchIndianaFrame_LoadRaces(self);
		
		if hasNewRace then
			ArchIndianaFrame_UpdateRaces(self);
		end
	elseif event == "CURRENCY_DISPLAY_UPDATE" then
		local changedRaces = ArchIndianaFrame_UpdateRaces(self);
		
		-- Add this zone to the history of the race the user just collected
		for i=1,ARCHAEOLOGY_MAX_RACES do
			if changedRaces[i] then
				local zoneText = GetZoneText();
				local hasZone = ArchIndiana_RaceContainsZone(i, zoneText);
				
				ArchIndiana_Debug("GetZoneText = "..zoneText);
				ArchIndiana_Debug("RaceContainsZone = "..tostring(hasZone));
	
				if not hasZone then
					table.insert(ArchIndiana_Settings.ZoneHistory[i], zoneText);
					table.sort(ArchIndiana_Settings.ZoneHistory[i]);
				end
			end
		end
		
		-- Do this after the above to take advantage of the new history
		ArchIndianaFrame_LoadRaces(self);
	elseif event == "BAG_UPDATE" then
		ArchIndianaFrame_UpdateRaces(self);
	elseif event == "ARTIFACT_DIG_SITE_UPDATED" or event == "ZONE_CHANGED_NEW_AREA" then
		ArchIndianaFrame_LoadRaces(self);
	end
end

-- Updates the main trade skill status bar
function ArchIndianaFrame_UpdateRank(self)
	local _, _, arch = GetProfessions();
	if arch then
		local name, texture, rank, maxRank = GetProfessionInfo(arch);

		self.surveyButton:Show();
		self.tradeButton:Show();
		
		self.rankBar:SetMinMaxValues(0, maxRank);
		self.rankBar:SetValue(rank);
		self.rankBar.text:SetText(rank.."/"..maxRank);
	else
	
		self.surveyButton:Hide();
		self.tradeButton:Hide();
		
		self.rankBar:SetMinMaxValues(0, 0);
		self.rankBar:SetValue(0);
		self.rankBar.text:SetText("0/0");
	end
end

-- Shows and Hides Race Frames
--   Returns: bool - Are any new races being shown
function ArchIndianaFrame_LoadRaces(self)
	ArchIndiana_Debug("ArchIndianaFrame_LoadRaces - BEGIN");
	
	local hasNewRace = false;
	
	local zoneText = GetZoneText();
	
	local numRaces = GetNumArchaeologyRaces();
	local raceFrame;
	for i=1,ARCHAEOLOGY_MAX_RACES do
		raceFrame = self["race"..i];
		if i <= numRaces then
			local name, texture, itemID, currency, reqFragments =  GetArchaeologyRaceInfo(i);

			raceFrame.race.logo:SetTexture(texture);
			raceFrame.race.name:SetText(name);
			
			local numProjects = GetNumArtifactsByRace(i);
			if numProjects == 0 then
				-- If we can't dig for this race hide it's status
				raceFrame.statusBar:SetMinMaxValues(0, 0);
				raceFrame.statusBar:SetValue(0);
				
				ArchIndiana_HideRace(raceFrame);
			else
				if ArchIndiana_RaceContainsZone(i, zoneText) then
					raceFrame.race.name:SetTextColor(HIGHLIGHT_FONT_COLOR.r,HIGHLIGHT_FONT_COLOR.g,HIGHLIGHT_FONT_COLOR.b,1);
			
					if not raceFrame:IsShown() then
						hasNewRace = true;
					end
			
					ArchIndiana_ShowRace(raceFrame);
				else
					raceFrame.race.name:SetTextColor(NORMAL_FONT_COLOR.r,NORMAL_FONT_COLOR.g,NORMAL_FONT_COLOR.b,1);
					
					-- If the user wants to show only races in this zone then hide
					if ArchIndiana_Settings.ShowZoneOnlyRaces then
						ArchIndiana_HideRace(raceFrame);
					else
					
						if not raceFrame:IsShown() then
							hasNewRace = true;
						end
					
						ArchIndiana_ShowRace(raceFrame);
					end
				end
			end
		else
			self["race"..i]:Hide();
		end
	end
	
	ArchIndiana_CalcHeight(self);
	
	ArchIndiana_Debug("ArchIndianaFrame_LoadRaces - END");
	
	return hasNewRace;
end

-- Helper function to show a race frame
function ArchIndiana_ShowRace(raceFrame)
	raceFrame:SetHeight(ARCHINDIANA_RACEFRAME_HEIGHT);
	raceFrame:Show();
end

-- Helper function to hide a race frame
function ArchIndiana_HideRace(raceFrame)
	raceFrame:SetHeight(1);
	raceFrame:Hide();
end

-- Calculates the Main Frame height based on the number of races shown
function ArchIndiana_CalcHeight(self)
	local numRaces = 0;

	for i=1,ARCHAEOLOGY_MAX_RACES do
		local raceFrame = self["race"..i];
		
		if raceFrame:IsShown() then
			numRaces = numRaces + 1;
		end
	end
	
	-- Calculate height for main window
	local height = (numRaces * ARCHINDIANA_RACEFRAME_HEIGHT) + 55;
	
	-- Controls the help text
	if numRaces == 0 then
		self.help:Show();
		
		local _, _, arch = GetProfessions();
		if arch then
			self.help:SetText(ARCHAEOLOGY_NONE_COMPLETED);
		else
			self.help:SetText(PROFESSIONS_ARCHAEOLOGY_MISSING);
		end
		
		height = height + 40;
	else
		self.help:Hide()
	end
	
	self:SetHeight( height );
end

-- Updates each race's artifact progress
--   Returns: List of races that have their fragments increased (Note: includes keystone modification)
function ArchIndianaFrame_UpdateRaces(self)
	ArchIndiana_Debug("ArchIndianaFrame_UpdateRaces - BEGIN");
	
	local changedRaces = {};
	
	local numRaces = GetNumArchaeologyRaces();
	local raceFrame;
	for i=1,ARCHAEOLOGY_MAX_RACES do
		raceFrame = self["race"..i];
		if i <= numRaces then
			local numProjects = GetNumArtifactsByRace(i);
			if numProjects > 0 then
				local name, texture, itemID, currency, reqFragments =  GetArchaeologyRaceInfo(i);
				
				ArchIndiana_Debug("Race Name: "..name);
				
				ArchIndiana_SelectArtifact(i);
				
				local oldValue = raceFrame.statusBar:GetValue();
				
				local base, adjust, totalCost = GetArtifactProgress();
				raceFrame.statusBar:SetMinMaxValues(0, totalCost);
				raceFrame.statusBar:SetValue(min(base+adjust, totalCost));
				
				-- If the number of fragments increased set the change flag to true;
				changedRaces[i] = oldValue < (base+adjust);
				
				ArchIndiana_Debug("base: "..base..", adjust: "..adjust..", totalCost: "..totalCost);
				
				if adjust > 0 then
					raceFrame.statusBar.text:SetText((base+adjust).." "..GREEN_FONT_COLOR_CODE.."(+"..adjust.." "..ARCHAEOLOGY_RUNE_STONES..")|r /"..totalCost);
				else
					raceFrame.statusBar.text:SetText(base.."/"..totalCost);
				end	
					
				if CanSolveArtifact() then
					raceFrame.solveButton:Enable();
				else 
					raceFrame.solveButton:Disable();
				end
				
				-- for loop largely lifted from Blizzard_ArchaeologyUI.lua
				local _, _, _, _, _, numSockets, _ =  GetSelectedArtifactInfo();
				local runeName, _, _, _, _, _, _, _, _, runeStoneIconPath = GetItemInfo(itemID);
				local endFound = false;
				for i=1,ARCHAEOLOGY_MAX_STONES do
					-- ArchIndiana_Debug("Rune Num: "..i);
					
					if i > numSockets or not runeName then
						raceFrame["keystone"..i]:Hide();
					else
						raceFrame["keystone"..i].icon:SetTexture(runeStoneIconPath);
						if ItemAddedToArtifact(i) then
							-- ArchIndiana_Debug("Rune "..runeName.." is added.");
							
							raceFrame["keystone"..i].icon:Show();
							raceFrame["keystone"..i].tooltip = string.format(ARCHAEOLOGY_KEYSTONE_REMOVE_TOOLTIP, runeName);
							raceFrame["keystone"..i]:Enable();
						else
							-- ArchIndiana_Debug("Rune "..runeName.." is missing.");
							raceFrame["keystone"..i].icon:Hide();
							raceFrame["keystone"..i].tooltip = string.format(ARCHAEOLOGY_KEYSTONE_ADD_TOOLTIP, runeName);
							raceFrame["keystone"..i]:Enable();
							if endFound then
								raceFrame["keystone"..i]:Disable();
							end
							endFound = true;
						end
						raceFrame["keystone"..i]:Show();
					end
				end
			end
		end
	end
	
	ArchIndiana_Debug("ArchIndianaFrame_UpdateRaces - END");
	
	return changedRaces;
end

function ArchIndiana_Solve(self)
	ArchIndiana_Debug("ArchIndiana_Solve - BEGIN");
	
	local raceId = self:GetParent():GetID();

	ArchIndiana_SelectArtifact(raceId);
	SolveArtifact();
	
	-- Clear keystones after solving
	ArchIndiana_ModifyKeystone(raceId, -ARCHAEOLOGY_MAX_STONES);
	
	ArchIndiana_Debug("ArchIndiana_Solve - END");
end

-- Controls the adding and removing of keystones
function ArchIndianaFrame_KeyStoneClick(self)
	local id = self:GetID();
	local parentId = self:GetParent():GetID();
	
	ArchIndiana_SelectArtifact(parentId);
	
	if ItemAddedToArtifact(id) then
		ArchIndiana_Debug("Removing Item...");
		
		ArchIndiana_ModifyKeystone(parentId, -1);
	else
		ArchIndiana_Debug("Socketing Item... id: "..id..", parent: "..parentId);
		
		-- Adding the item so we can see if it worked. This is easier
		-- than seeing if we have the right fragment for this race.
		-- This action will cleared as SetSelectArtifact is called,
		-- so no harm.
		SocketItemToArtifact();
		if ItemAddedToArtifact(id) then
			ArchIndiana_ModifyKeystone(parentId, 1);
		else
			ArchIndiana_Debug("Could not add fragment");
		end
	end

	ArchIndianaFrame_UpdateRaces(ArchIndianaFrame);
end

-- Restores the keystones for each race. They are cleared
-- whenever SetSelectedArtifact is called.
function ArchIndiana_SelectArtifact(raceId)
	SetSelectedArtifact(raceId);
	
	local numKeystones = ArchIndiana_Settings.Keystones[raceId];
	
	if numKeystones and numKeystones > 0 then
		for i=1,numKeystones do
			SocketItemToArtifact();
		end
		
		ArchIndiana_Debug("Loading keystones - Race: "..raceId..", num: "..ArchIndiana_Settings.Keystones[raceId]);
	end
end

-- Abstracts the adding and removing of keystones to the
-- global array.
function ArchIndiana_ModifyKeystone(raceId, value)
	local num = 0;
	
	if ArchIndiana_Settings.Keystones[raceId] then
		num = ArchIndiana_Settings.Keystones[raceId];
	end
	
	num = num + value;
	
	-- Make sure we don't go over or under
	if num < 0 then
		num = 0;
	elseif num > ARCHAEOLOGY_MAX_STONES then
		num = ARCHAEOLOGY_MAX_STONES;
	end
	
	ArchIndiana_Settings.Keystones[raceId] = num;
end

function ArchIndiana_RaceContainsZone(race, zone)
	if ArchIndiana_Settings.ZoneHistory[race] == nil then
		ArchIndiana_Settings.ZoneHistory[race] = {};
	end
	
	local zoneList = ArchIndiana_Settings.ZoneHistory[race];

	return ArchIndiana_Contains(zoneList, zone);
end


-- Displays the tooltip for the item the user is working on
function ArchIndiana_RaceTooltip(self)
	local race = self:GetParent():GetID();
	
	local numProjects = GetNumArtifactsByRace(race);
	
	if numProjects > 0 then
		ArchIndiana_SelectArtifact(race);
		
		local name, description, rarity, icon, spellDescription, numSockets, bgTexture =  GetSelectedArtifactInfo();
		
		local rarityText = "";
		if rarity == 0 then 
			-- Common
			name = "|cff9d9d9d"..name.."|r"; -- Even though it's common, the item appears as "poor"
			rarityText = ITEM_QUALITY1_DESC;
		else 
			-- Rare
			name = "|cff0070dd"..name.."|r"; -- Couldn't find a constant for "rare" color.
			rarityText = ITEM_QUALITY3_DESC;
		end
		
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
		
		-- Otherwise icon would ba the same size as the standard text
		GameTooltipTexture1:SetHeight(32);
		GameTooltipTexture1:SetWidth(32);
		
		GameTooltip:AddLine(name, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		GameTooltip:AddLine(rarityText, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		
		GameTooltip:AddLine(' ', HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		GameTooltip:AddTexture(icon);
		
		GameTooltip:AddLine(' ', HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		GameTooltip:AddLine(' ', HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		
		GameTooltip:AddLine(spellDescription, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
		GameTooltip:AddLine(' ', HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		
		GameTooltip:AddLine(description, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		
		GameTooltip:Show();
	end
end

-- Shows a Tooltip with a list of Zones previously dug.
function ArchIndiana_ZoneHistoryTooltip(self)
	local race = self:GetParent():GetID();
	
	local zoneList = ArchIndiana_Settings.ZoneHistory[race];
	
	local currZone = GetZoneText();
	
	if zoneList then
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
		
		GameTooltip:AddLine(HISTORY, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		GameTooltip:AddLine(" ", HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		
		GameTooltip:AddLine(ZONE_COLON, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
		local size = # zoneList;
		for i=1,size do
			if zoneList[i] == currZone then
				GameTooltip:AddLine(zoneList[i], HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
			else
				GameTooltip:AddLine(zoneList[i], NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
			end
		end
		
		GameTooltip:Show();
	end
end

-- Adds a tooltip based on a SecureActionButton's spell attribute
function ArchIndiana_SpellTooltip(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
	
	local link = GetSpellLink( self:GetAttribute("spell") );
	GameTooltip:SetHyperlink(link);
	
	GameTooltip:Show();
end

function ArchIndiana_Contains(list, value)
	-- Tried to find a lua version of "contains" but couldn't.
	local hasZone = false;
	local listSize = # list;
	for j=1,listSize do
		if list[j] == value then
			hasZone = true;
		end
	end
	
	return hasZone
end

-- Generic debug function. If the Debug flag 
-- is not set (default), don't do anything.
function ArchIndiana_Debug(text)
	if ArchIndiana_Settings.Debug then
		ArchIndiana_Print("DEBUG: "..text);
	end
end

-- Prints to the chat window with an addon specific prefix.
function ArchIndiana_Print(text)
	print("|c"..ARCHINDIANA_TITLECOLOR.."[ArchIndiana]|r "..text);
end

function ArchIndiana_OptionMenu()
	local menu = {
		{ text = "Reset Window", notCheckable = true, func = ArchIndianaFrame_ResetWindow},
		{ text = "Lock Window", checked = ArchIndiana_Settings.LockWindow, func =  ArchIndiana_ToggleLockWindow },
		{ text = "", notCheckable = true},
		{ text = "Select an Option", isTitle = true, notCheckable = true},
		{ text = "Show Window", checked = ArchIndiana_Settings.Show, func = ArchIndiana_ToggleVisible },
		{ text = "Auto-Hide During Combat", checked = ArchIndiana_Settings.CombatHide, func =  ArchIndiana_ToggleCombatHide },
		{ text = "Only Show Races Found in Current Zone", checked = ArchIndiana_Settings.ShowZoneOnlyRaces, func = ArchIndiana_ToggleShowZoneOnlyRaces },
	}
	local menuFrame = CreateFrame("Frame", "ExampleMenuFrame", UIParent, "UIDropDownMenuTemplate")

	-- Make the menu appear at the cursor: 
	EasyMenu(menu, menuFrame, "cursor", 0 , 0, "MENU");

end

-------------------------------------------------------------
-- Below code adapted from thread on WoW Interface
-- http://www.wowinterface.com/forums/showthread.php?t=2762

-- Call this in a mod's initialization to move the minimap button to its saved position (also used in its movement)
-- ** do not call from the mod's OnLoad, VARIABLES_LOADED or later is fine. **
function ArchIndiana_MinimapButton_Reposition()
	ArchIndiana_MinimapButton:SetPoint("TOPLEFT","Minimap","TOPLEFT",52-(80*cos(ArchIndiana_Settings.MinimapPos)),(80*sin(ArchIndiana_Settings.MinimapPos))-52)
end

-- Only while the button is dragged this is called every frame
function ArchIndiana_MinimapButton_DraggingFrame_OnUpdate()

	local xpos,ypos = GetCursorPosition()
	local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom()

	xpos = xmin-xpos/UIParent:GetScale()+70 -- get coordinates as differences from the center of the minimap
	ypos = ypos/UIParent:GetScale()-ymin-70

	ArchIndiana_Settings.MinimapPos = math.deg(math.atan2(ypos,xpos)) -- save the degrees we are relative to the minimap center
	ArchIndiana_MinimapButton_Reposition() -- move the button
end

-- Put your code that you want on a minimap button click here.  arg1="LeftButton", "RightButton", etc
function ArchIndiana_MinimapButton_OnClick(self, button)
	if button == "LeftButton" then
		ArchIndiana_ToggleVisible();
	elseif button == "RightButton" then
		ArchIndiana_OptionMenu();
	end
end

function ArchIndiana_MinimapButtonTooltip(self)
	GameTooltip:ClearLines();
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
	
	-- One of only a couple places that doesn't use localized text
	GameTooltip:AddLine(ARCHINDIANA_NAME, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
	GameTooltip:AddLine(description, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	
	GameTooltip:AddLine(' ', HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1);
	GameTooltip:AddLine("Left-Click to Show/Hide the window", NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	GameTooltip:AddLine("Drag to move the Minimap Button", NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	GameTooltip:AddLine("Right-Click for the Options Menu", NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	
	GameTooltip:Show();
end


