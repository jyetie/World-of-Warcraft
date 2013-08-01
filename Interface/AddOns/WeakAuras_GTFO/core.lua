WeakAuras_GTFO = CreateFrame("Frame")

local WA_loaded, GTFO_loaded = false, false

local function getDisplay()

	local gtfo = {
		["color"] = {
			[1] = 1,
			[2] = 0.12549019607843,
			[3] = 0.17647058823529,
			[4] = 0.75,
		},
		["mirror"] = false,
		["untrigger"] = {
		},
		["anchorPoint"] = "CENTER",
		["blendMode"] = "ADD",
		["regionType"] = "texture",
		["actions"] = {
			["start"] = {
			},
			["finish"] = {
			},
		},
		["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura6",
		["id"] = "GTFO Display",
		["selfPoint"] = "CENTER",
		["additional_triggers"] = {
		},
		["animation"] = {
			["start"] = {
				["duration_type"] = "seconds",
				["type"] = "none",
			},
			["main"] = {
				["type"] = "preset",
				["duration_type"] = "seconds",
				["preset"] = "pulse",
			},
			["finish"] = {
				["duration_type"] = "seconds",
				["type"] = "none",
			},
		},
		["trigger"] = {
			["type"] = "custom",
			["custom_type"] = "event",
			["debuffType"] = "HELPFUL",
			["duration"] = "5",
			["event"] = "Chat Message",
			["subeventPrefix"] = "SPELL",
			["names"] = {
			},
			["use_unit"] = true,
			["custom"] = "function (event, ...)\n    -- Init hook\n    if not WA_GTFO_HOOKED then\n        WA_GTFO_HOOKED = true\n        \n        -- Pre GTFO 4.7        \n        --hooksecurefunc(\"GTFO_PlaySound\", function(alertId) WeakAuras.ScanEvents(\"WA_GTFO_HOOK\", alertId); end)\n        -- Post GTFO 4.7\n        hooksecurefunc(\"GTFO_DisplayAura\", function(alertId) WeakAuras.ScanEvents(\"WA_GTFO_HOOK\", alertId); end)\n    end\n    \n    -- Hook called\n    if event == \"WA_GTFO_HOOK\" then\n        return true\n    end\nend",
			["subeventSuffix"] = "_CAST_START",
			["unit"] = "player",
			["events"] = "WA_GTFO_HOOK ADDON_LOADED PLAYER_ENTERING_WORLD",
			["unevent"] = "auto",
			["custom_hide"] = "timed",
		},
		["discrete_rotation"] = 0,
		["frameStrata"] = 1,
		["width"] = 200,
		["rotation"] = 0,
		["xOffset"] = 0,
		["numTriggers"] = 1,
		["desaturate"] = false,
		["height"] = 200,
		["rotate"] = false,
		["load"] = {
			["role"] = {
				["multi"] = {
				},
			},
			["class"] = {
				["multi"] = {
				},
			},
			["spec"] = {
				["multi"] = {
				},
			},
			["size"] = {
				["multi"] = {
				},
			},
		},
		["yOffset"] = 0,
	}

	return gtfo
end

local function registerDisplays()
	if (WA_loaded and GTFO_loaded) then
		local display = getDisplay()
		WeakAuras.RegisterAddon("GTFO", "GTFO", "Displays for GTFO")
		WeakAuras.RegisterDisplay("GTFO", display, true)
	end
end

WeakAuras_GTFO:RegisterEvent("ADDON_LOADED")
WeakAuras_GTFO:RegisterEvent("VARIABLES_LOADED")
WeakAuras_GTFO:RegisterEvent("PLAYER_LOGIN")
-- GTFO_WeakAuras:RegisterEvent("PLAYER_ENTERING_WORLD")
-- GTFO_WeakAuras:RegisterEvent("PLAYER_LOGOUT")
-- GTFO_WeakAuras:RegisterEvent("PLAYER_REGEN_DISABLED")
-- GTFO_WeakAuras:RegisterEvent("PLAYER_REGEN_ENABLED")

WeakAuras_GTFO:SetScript("OnEvent",function(self, event, addon)
	if event == "ADDON_LOADED" and addon == "GTFO" then
		GTFO_loaded = true
	end

	if event == "ADDON_LOADED" and addon == "WeakAuras" then
		WA_loaded = true
	end

	if event == "ADDON_LOADED" and addon == "WeakAuras_GTFO" then
		-- self:UnregisterEvent("ADDON_LOADED")
		GTFO_loaded = true
		WA_loaded = true
	end

	if event == "VARIABLES_LOADED" then
		self:UnregisterEvent("ADDON_LOADED")
		registerDisplays()
		self:UnregisterEvent("VARIABLES_LOADED")
	end
	
	if event == "PLAYER_LOGIN" then
		DEFAULT_CHAT_FRAME:AddMessage("WeakAuras_GTFO loaded.")
		
		if (GTFO_loaded) then
			DEFAULT_CHAT_FRAME:AddMessage("WeakAuras_GTFO found GTFO.")
		end
		
		if (WA_loaded) then
			DEFAULT_CHAT_FRAME:AddMessage("WeakAuras_GTFO found WeakAuras.")
		end

		-- registerDisplays()
		self:UnregisterEvent("PLAYER_LOGIN")
	end

end)
