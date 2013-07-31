local Addon = PetTracker
local Journal = PetTrackerTamerJournal
local Tab = TabAppender_New('Tamers', PetJournalParent)


--[[ Events ]]--

function Journal:Startup()
	self.Slots = PetTracker.JournalSlot:CreateLine('TOP', self.RightInset, 0, 104)
	self.SearchBox:SetText(PetTracker_Sets.tamerSearch or SEARCH)
	self.SearchBox:SetScript('OnTextChanged', self.OnSearch)
	self.Count.Number:SetText(46)
	self.Startup = function() end

	HybridScrollFrame_CreateButtons(self.List, 'PetTrackerTamerButton', 44, 0)
	self.List.scrollBar.doNotHide = true
	self.List:update()
	self.List:onClick(self.List.buttons[1])

	local updateTab = PetJournalParent_UpdateSelectedTab
	function PetJournalParent_UpdateSelectedTab(parent)
		if PanelTemplates_GetSelectedTab(parent) == Tab:GetID() then
			MountJournal:Hide()
			PetJournal:Hide()
			self:Show()
		else
			updateTab(parent)
			self:Hide()
		end
	end

	local TEMP = self.PetCardInset:CreateFontString(nil, nil, 'GameFontHighlightLarge')
	TEMP:SetText("What goes here? You choose!\n We're currently looking for suggestions.")
	TEMP:SetAllPoints()
end

function Journal:OnSearch()
	PetTracker_Sets.tamerSearch = self:GetText() ~= SEARCH and self:GetText() or nil
	self:GetParent().List:update()
end

function Tab:OnClick()
	Journal:Startup()
	PetJournalParent_UpdateSelectedTab(PetJournalParent)
end


--[[ List ]]--

function Journal.List:update()
	local self = Journal.List
	local off = HybridScrollFrame_GetOffset(self)
	local tamers = {}

	for name in pairs(PetTracker_Tamers) do
		local tamer =  Addon.Tamer:Get(name)
		if Addon:Filter(tamer, PetTracker_Sets.tamerSearch) then
			tinsert(tamers, tamer)
		end
	end

	sort(tamers, function(a,b)
		local x, y = a:GetLevel(), b:GetLevel()
		return x < y or x == y and a:GetQuality() < b:GetQuality()
	end)

	for i, button in ipairs(self.buttons) do
		local tamer = tamers[i + off]

		if tamer then
			button.name:SetText(tamer.name)
			button.model:SetDisplayInfo(tamer.model)
			button.model.level:SetText(tamer:GetLevel())
			button.petTypeIcon:SetTexture(Addon:GetTypeIcon(tamer:GetType()))
			button.model.quality:SetVertexColor(Addon:GetQualityColor(tamer:GetQuality()))
			button.selectedTexture:SetShown(tamer == self.tamer)
		end

		button:SetShown(tamer)
		button.tamer = tamer
	end

	HybridScrollFrame_Update(self, #tamers * 46, self:GetHeight())
end

function Journal.List:onClick(button)
	local slots = self:GetParent().Slots
	for i, slot in ipairs(slots) do
		slot:Display(button.tamer[i])
	end

	self.tamer = button.tamer
	self:update()
end