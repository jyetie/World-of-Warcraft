function TabAppender_New(label, parent)
	local id = parent.numTabs + 1
	local tab = CreateFrame('Button', '$parentTab' .. id, parent, 'CharacterFrameTabButtonTemplate', id)
	tab:SetPoint('LEFT', parent:GetName() .. 'Tab' .. (id - 1), 'RIGHT', -16, 0)
	tab:SetText(label)
	tab:SetScript('OnClick', function()
		PanelTemplates_SetTab(parent, id)
		tab.OnClick()
	end)
	
	parent.numTabs = id
	PanelTemplates_UpdateTabs(parent)
	
	return tab
end