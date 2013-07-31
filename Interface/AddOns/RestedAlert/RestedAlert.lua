local ra_frame = CreateFrame("FRAME", "RestedAlertFrame");
ra_frame:RegisterEvent("PLAYER_UPDATE_RESTING");

local function onUpdate(self,elapsed)
   self.time = (self.time or 3)-elapsed
   local alpha = self:GetAlpha()
   if self.time > 0 then return end
   while self.time <= 0 do 
      self.time = self.time+0.3
      alpha = alpha-0.025 -- increasing this value quickens the fade, decreasing smooths the fade (at the cost of slightly higher resource consumption)
   end
   if alpha <= 0 then
      self:Hide()
   else
      self:SetAlpha(alpha)
   end
end

local textFrame = CreateFrame("Frame","MOD_TextFrame",UIParent) -- make sure your frame name (arg2) is unique (best done by prefixing your addon name), as a global with this name is automatically created for your frame. Pass nil as arg2 if a name is not needed to avoid namespace pollution.
textFrame:SetSize(300,300)
textFrame:Hide()
textFrame:SetScript("OnUpdate",onUpdate)
textFrame.text = textFrame:CreateFontString(nil,"BACKGROUND","PVPInfoTextFont")
textFrame.text:SetAllPoints()
textFrame:SetPoint("CENTER",0,200)

function textFrame:message(message) -- last I checked, method lookups were faster than globals. plus no namespace pollution. if you want to call it from outside this file though, you probably want to make a global function - global lookup (function) + local lookup (frame) vs. global lookup (frame) + method lookup (function). if you do, make sure you prefix with addon name to avoid conflicts.
   self.text:SetText(message)
   self:SetAlpha(1)
   self.time = 3
   self:Show() 
end

local function RestedAlert_OnEvent(self, event)
   if (event == "PLAYER_UPDATE_RESTING") then
      rested = IsResting();
      if rested == 1 then
	 textFrame:message("Entering Rested State!");
      else
	 textFrame:message("Leaving Rested State!");
      end
   end
end

ra_frame:SetScript("OnEvent", RestedAlert_OnEvent);
