local addonName, db = ...

local function GetPlayerKey()
  return UnitName("player") .. " - " .. GetRealmName()
end

local function FilterCheck(flags)
	if type(flags) == "string" then
		if strfind(flags, "ALLIANCE_FRIENDLY") and strfind(flags, "HORDE_FRIENDLY") then
			return true -- friendly to both until spoken to
		elseif strfind(flags, "ALLIANCE_FRIENDLY") then
			return UnitFactionGroup("player") ~= "Alliance"
		elseif strfind(flags, "HORDE_FRIENDLY") then
			return UnitFactionGroup("player") ~= "Horde"
		end
	end
	return true
end

local function Install(flag)
  local x = _NPCScan
  local Options = x.OptionsCharacter
  if flag == 1 then
    for id, _ in pairs(Options.NPCs) do
      x.NPCRemove(id)
    end
  end
  local world
  for _, npc in pairs(db.specials) do
	if FilterCheck(npc[4]) then
		world = x.ContinentIDs[db.maps[npc[1]]] or db.maps[npc[1]]
		x.NPCAdd(npc[2], npc[3], world)
	end
  end
  for _, npc in pairs(db.tameable) do
	if FilterCheck(npc[4]) then
		world = x.ContinentIDs[db.maps[npc[1]]] or db.maps[npc[1]]
		x.NPCAdd(npc[2], npc[3], world)
	end
  end
  for _, npc in pairs(db.rares) do
	if FilterCheck(npc[4]) then
		world = x.ContinentIDs[db.maps[npc[1]]] or db.maps[npc[1]]
		x.NPCAdd(npc[2], npc[3], world)
	end
  end
  if flag == 2 then
    local key = GetPlayerKey()
    if not NPCScanEx_Auto[key] then
      print("NPCScanEx has automatically installed any missing NPC's from NPCScan, enjoy! This is a one time message, just keeping you informed on what is going on.")
    elseif NPCScanEx_Auto[key] < db.version then
      print("NPCScanEx has automatically installed any missing NPC's from NPCScan, enjoy! You now have NPCScanEx database version " .. db.version .. ".")
    end
    NPCScanEx_Auto[key] = db.version -- store current DB version
  else
    if flag == 1 then
      print("NPCScanEx has successfully cleaned and installed itself.")
    else
      print("NPCScanEx has successfully added what NPCs you previously were missing.")
    end
  end
end

local autoFocus
StaticPopupDialogs[addonName.."_SETTINGS_MENU"] = {
  text = [[Thank you for installing and using NPCScanEx!

After you are done you can safely disable this addon, this is only used for the first-time-setup. Note that each character keeps a list of what NPC they are tracking, so you have to run the setup on each character individually. It's a _NPCScan thing, this addon is limited and can't access other characters private data.

You now have these choices:

|cffFF55551.|r Clean the old database first, this means any custom rares will be lost. In order to do this you have to confirm by typing "INSTALL" in the box below.

|cff55FF002.|r Install only what is missing, do not remove anything else from the current database.

If you are uncertain I recommend you pick option |cff55FF002|r.

Note: If you type "/npcscanex auto" you can setup automatic installation for all your characters, the option also provides more information about this feature.]],
  button1 = "|cffFF5555Delete then install|r",
  button2 = "Cancel setup",
  button3 = "|cff55FF00Install missing only|r",
  OnAccept = function()
    Install(1)
  end,
  OnCancel = function()
  end,
  OnAlt = function()
    Install()
  end,
  OnShow = function(self)
    autoFocus = self.editBox:IsAutoFocus()
    self.editBox:SetAutoFocus(false)
    self.editBox:ClearFocus()
    self.button1:Disable()
  end,
  OnHide = function(self)
    ChatEdit_FocusActiveWindow()
    self.editBox:SetText("")
    self.editBox:SetAutoFocus(autoFocus)
  end,
  EditBoxOnEscapePressed = function(self)
    self:ClearFocus()
  end,
  EditBoxOnEnterPressed = function(self)
    self:ClearFocus()
  end,
  EditBoxOnTextChanged = function(self)
    local parent = self:GetParent()
    if strupper(parent.editBox:GetText()) == "INSTALL" then
      parent.button1:Enable()
    else
      parent.button1:Disable()
    end
  end,
  exclusive = 1,
  hasEditBox = 1,
  hideOnEscape = 1,
  maxLetters = 32,
  showAlert = 1,
  timeout = 0,
  whileDead = 1,
  preferredIndex = STATICPOPUP_NUMDIALOGS,
}

StaticPopupDialogs[addonName.."_SETTINGS_AUTO_MENU"] = {
  text = [[Thank you for installing and using NPCScanEx!

This option allows you to automatically install any missing NPC from your _NPCScan addon, this way you make sure every character that you login to has everything tracked at all times!

You can at any time show this dialog to disable this feature. Already installed NPC's will remain in the affected characters.]],
  button1 = "|cff55FF00Enable|r",
  button2 = "Cancel auto setup",
  button3 = "|cffFF5555Disable|r",
  OnAccept = function()
	if type(NPCScanEx_Auto) == "table" then
		table.wipe(NPCScanEx_Auto)
	else
		NPCScanEx_Auto = {}
	end
    Install(2)
  end,
  OnCancel = function()
  end,
  OnAlt = function()
    NPCScanEx_Auto = nil
  end,
  OnShow = function(self)
  end,
  OnHide = function(self)
    ChatEdit_FocusActiveWindow()
  end,
  exclusive = 1,
  hideOnEscape = 1,
  maxLetters = 32,
  showAlert = 1,
  timeout = 0,
  whileDead = 1,
  preferredIndex = STATICPOPUP_NUMDIALOGS,
}

_G["SLASH_"..addonName.."1"] = "/npcscanex"
_G["SLASH_"..addonName.."2"] = "/npcscanextension"
SlashCmdList[addonName] = function(cmd)
  if (cmd or ""):upper() == "AUTO" then
    StaticPopup_Show(addonName.."_SETTINGS_AUTO_MENU")
  else
    StaticPopup_Show(addonName.."_SETTINGS_MENU")
  end
end

local load = CreateFrame("Frame")
load:RegisterEvent("ADDON_LOADED")
load:SetScript("OnEvent", function(_, event, name)
  if event == "ADDON_LOADED" and addonName == name then
    load:UnregisterEvent(event)
    load:RegisterEvent("PLAYER_LOGIN")
  elseif event == "PLAYER_LOGIN" then
    load:UnregisterEvent(event)
    load = nil
    local key = GetPlayerKey()
    if type(NPCScanEx_Auto) == "table" and (not NPCScanEx_Auto[key] or NPCScanEx_Auto[key] < db.version) then
      if _NPCScan.Frame.PLAYER_LOGIN then -- not yet loaded character settings
        hooksecurefunc(_NPCScan.Frame, "PLAYER_LOGIN", function()
          Install(2)
        end)
      else -- too late, we can just import the data now
        Install(2)
      end
    end
  end
end)
