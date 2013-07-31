local ADDON, Addon = ...
local Journal, Tamer = Addon.Journal, Addon.Tamer
local MapFrame, BlipParent = WorldMapDetailFrame, WorldMapButton

local Map = Addon:NewModule('WorldMap', PetTrackerMapFilter)
local Tooltip = Addon.MapTip(WorldMapFrame)

local L = Addon.Locals
local SUGGESTIONS = {
	L.CommonSearches,
	LibStub('CustomSearch-1.0').NOT .. ' ' .. L.Maximized,
	ADDON_MISSING
}


--[[ Events ]]--

function Map:Startup()
	self:RegisterEvent('ZONE_CHANGED_NEW_AREA')
	self:SetScript('OnTextChanged', self.FilterChanged)
	self:SetScript('OnEvent', SetMapToCurrentZone)
	self:SetScript('OnUpdate', self.UpdateTip)
	self:SetScript('OnShow', self.UpdateBlips)
	self:SetScript('OnHide', self.HideTip)

	self.DefaultText = L.FilterPets
	self:SetText(Addon.Sets.MapFilter or L.FilterPets)
	self:SetPoint('TOPRIGHT', BlipParent, -6, -6)
	self:SetFrameLevel(self:GetFrameLevel() + 16)
	self.blips = {}

	for i, text in ipairs(SUGGESTIONS) do
		local button = CreateFrame('Button', '$parentButton'..i, self.Suggestions, 'PetTrackerSuggestionButton')
		button:SetPoint('TOPLEFT', 18, -16*i + 7)
		button:SetText(text)

		if i == 1 then
			button:SetDisabledFontObject(GameFontNormalSmallLeft)
			button:Disable()
		end
	end

	hooksecurefunc('WorldMapShowDropDown_Initialize', function()
		UIDropDownMenu_AddButton {
			text = 'Show Battle Pets',
			func = function() self:Toggle('Species') end,
			checked = self:Active('Species'),
			keepShownOnClick = true,
			isNotRadio = true
		}

		UIDropDownMenu_AddButton {
			text = L.ShowStables,
			func = function() self:Toggle('Stables') end,
			checked = self:Active('Stables'),
			keepShownOnClick = true,
			isNotRadio = true
		}
	end)
end

function Map:TrackingChanged()
	if self:GetParent():IsVisible() then 
		self:UpdateBlips()
	end
end

function Map:FilterChanged()
	local text = self:GetText()
	if text == '' or text == self.DefaultText then
		text = nil
	end

	Addon.Sets.MapFilter = text
	self:TrackingChanged()
end


--[[ Blips ]]--

function Map:UpdateBlips()
	local showSpecies = self:Active('Species')
	self:SetAlpha(showSpecies and 1 or 0)
	self:EnableMouse(showSpecies)
	self:ResetBlips()

	if showSpecies then
		self:ShowSpecies()
	end

	if self:Active('Stables') then
		self:ShowStables()
	end
end

function Map:ShowSpecies()
	local species = Journal:GetSpeciesIn(Addon.zone)
	
	for specie, floors in pairs(species) do
		local spots = floors[Addon.level]
		local specie = Addon.Specie:Get(specie)
			
		if spots and Addon:Filter(specie, Addon.Sets.MapFilter) then
			local icon = specie:GetTypeIcon()
			local special = specie:IsSpecial()

			for x, y in gmatch(spots, '(%w%w)(%w%w)') do 
				local blip = Addon.SpecieBlip(BlipParent)
				blip.border:SetShown(special)
				blip.icon:SetTexture(icon)
				blip.specie = specie

				self:AddBlip(blip, x, y)
			end
		end
	end
end

function Map:ShowStables()
	local stables = Journal:GetStablesIn(Addon.zone, Addon.level)

	for x, y in gmatch(stables, '(%w%w)(%w%w)') do    
		self:AddBlip(
			Addon.StableBlip(BlipParent), x, y)
	end
end

function Map:AddBlip(blip, x, y)
	local width, height = MapFrame:GetSize()
	local x = tonumber(x, 36) / 1000
	local y = tonumber(y, 36) / 1000

	blip:SetPoint('CENTER', MapFrame, 'TOPLEFT', x * width, -y * height)
	blip.x, blip.y = x, y
	blip:Show()

	tinsert(self.blips, blip)
end

function Map:ResetBlips()
	for _, blip in ipairs(self.blips) do
		blip:Release()
	end
	wipe(self.blips)
end


--[[ Tooltip ]]--

function Map:UpdateTip()
	Tooltip:Anchor(BlipParent, 'ANCHOR_CURSOR')

	for i, blip in ipairs(self.blips) do
		if blip:IsMouseOver() then
			local title, text = blip:GetTooltip()
			
			Tooltip:AddHeader(title)
			Tooltip:AddLine(text, 1,1,1)
		end
	end

	for i = 1, GetNumMapLandmarks() do
		local frame = _G['WorldMapFramePOI' .. i]

		if frame and frame:IsMouseOver() then
			local tamer = Tamer:Get(frame.name)
			
			if tamer then
				Tooltip:AddHeader(tamer.name)
				Tooltip:AddLine(NORMAL_FONT_COLOR_CODE .. frame.description .. FONT_COLOR_CODE_CLOSE)

				for i, pet in ipairs(tamer) do
					local r,g,b = Addon:GetQualityColor(pet:GetQuality())
					local icon = format('|T%s:16:16:-3:0:128:256:60:100:130:170:255:255:255|t', Journal:GetTypeIcon(pet:GetSpecie()))

					Tooltip:AddLine(icon .. pet:GetName() .. ' (' .. pet:GetLevel() .. ')', r,g,b)
				end
			end
		end
	end

	Tooltip:Display()
end

function Map:HideTip()
	Tooltip:Hide()
end


--[[ Settings ]]--

function Map:Toggle(type)
	Addon.Sets['Hide'..type] = self:Active(type)
	self:UpdateBlips()
end

function Map:Active(type)
	return not Addon.Sets['Hide'..type]
end