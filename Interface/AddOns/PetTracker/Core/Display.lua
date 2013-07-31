--[[
Copyright 2012-2013 João Cardoso
PetTracker is distributed under the terms of the GNU General Public License (Version 3).
As a special exception, the copyright holders of this addon do not give permission to
redistribute and/or modify it.

This addon is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with the addon. If not, see <http://www.gnu.org/licenses/gpl-3.0.txt>.

This file is part of PetTracker.
--]]

local _, Addon = ...
Addon.MaxQuality = ITEM_QUALITY_RARE + 1
Addon.MaxLevel = 25

local Missing = RED_FONT_COLOR
local SourceIcons = {
	'Interface/WorldMap/TreasureChest_64',
	'Interface/GossipFrame/AvailableQuestIcon',
	'Interface/Minimap/Tracking/Banker',
	'Interface/Archeology/Arch-Icon-Marker',
	'Interface/Icons/Tracking_WildPet',
	'Interface/AchievementFrame/UI-Achievement-TinyShield',
	'Interface/GossipFrame/DailyQuestIcon'
}


--[[ Constants ]]--

function Addon:GetQualityColor(quality)
	if quality > 0 then
		return GetItemQualityColor(quality - 1)
	end
	
	return Missing.r, Missing.g, Missing.b
end

function Addon:GetSourceName(source)
	return _G['BATTLE_PET_SOURCE_' .. source]
end

function Addon:GetSourceIcon(source)
	return SourceIcons[source]
end

function Addon:GetTypeName(type)
	return _G['BATTLE_PET_NAME_' .. type]
end

function Addon:GetTypeIcon(type)
	return type and 'Interface/PetBattles/PetIcon-' .. PET_TYPE_SUFFIX[type]
end


--[[ Utilities ]]--

function Addon:KeepShort(text)
	if not text:find('|n') and strlen(text) > 100 then
		return text:sub(0, 97) .. '...'
	end
	
	return text
end