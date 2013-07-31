local Func0 = function() end
local Func1 = ActionButton_UpdateOverlayGlow
local Func2 = ActionButton_ShowOverlayGlow
SLASH_NOBUTTONGLOW1, SLASH_NOBUTTONGLOW2 = "/nbg", "/nobuttonglow"

local function onCmd (msg, editbox)
	if GlowEnabled then
		print("NoButtonGlow: Glow disabled.")
		ActionButton_UpdateOverlayGlow = Func0
		ActionButton_ShowOverlayGlow = Func0
		GlowEnabled = false
	else
		print("NoButtonGlow: Glow enabled.")
		ActionButton_UpdateOverlayGlow = Func1
		ActionButton_ShowOverlayGlow = Func2
		GlowEnabled = true
	end
end

SlashCmdList["NOBUTTONGLOW"] = onCmd

local frame = CreateFrame("FRAME")
frame:RegisterEvent("ADDON_LOADED")

local function onLoad (self, event, ...)
	if not GlowEnabled then
		ActionButton_UpdateOverlayGlow = Func0
		ActionButton_ShowOverlayGlow = Func0
	end
end

frame:SetScript("OnEvent", onLoad);