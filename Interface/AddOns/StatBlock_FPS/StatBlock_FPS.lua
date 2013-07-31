
local fps = CreateFrame("Frame"):CreateAnimationGroup()
local lbl = FPS_ABBR
local obj = LibStub("LibDataBroker-1.1"):NewDataObject("FPS", {type = "data source", value = "0", suffix = lbl, text = "0"..lbl})

local format = string.format
local GetFramerate = GetFramerate

local update = fps:CreateAnimation()
fps:SetScript("OnLoop", function()
	local rate = format("%.0f", GetFramerate())
	obj.text = rate..lbl
	obj.value = rate
end)
update:SetOrder(1)
update:SetDuration(1)
fps:SetLooping("REPEAT")
fps:Play()

