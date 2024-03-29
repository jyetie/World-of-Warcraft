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

local ADDON, Addon = ...
local Ability = LibStub('Poncho-1.0')('Button')
local AbilityButton = Addon:NewClass(nil, 'AbilityButton', ADDON..'AbilityButton', Ability)
local AbilityAction = Addon:NewClass(nil, 'AbilityAction', 'PetBattleAbilityButtonTemplate', Ability)

local GetInfo, GetModifier = C_PetJournal.GetPetAbilityInfo, C_PetBattles.GetAttackModifier
local ModifierIcon = 'Interface\\PetBattles\\BattleBar-AbilityBadge-'
local RequiresLevel = PET_ABILITY_REQUIRES_LEVEL
local Tooltip = PetBattlePrimaryAbilityTooltip


--[[ Startup ]]--

function Ability:OnCreate()
	self:SetScript('OnEnter', self.OnEnter)
	self:SetScript('OnLeave', self.OnLeave)
	self:SetScript('OnClick', nil)
end

function Ability:Display(pet, i, target)
	local id = pet:GetAbilityID(i)
	local name, icon, type = GetInfo(id)
	local modifier = type and target and GetModifier(type, target) or 1

	local cooldown, requisite = pet:GetAbilityStatus(i)
	local unusable = cooldown or requisite
	local color = unusable and .5 or 1

	self.BetterIcon:SetTexture(ModifierIcon .. (modifier > 1 and 'Strong' or 'Weak'))
	self.BetterIcon:SetShown(modifier ~= 1)

	self.Icon:SetTexture(icon)
	self.Icon:SetDesaturated(unusable)
	self.Icon:SetVertexColor(color, color, color)
	self.Lock:SetShown(requisite)

	self.Cooldown:SetText(cooldown or "")
	self.CooldownShadow:SetShown(cooldown)
	self.Cooldown:SetShown(cooldown)

	if self.Type then
		self.Type:SetTexture(Addon:GetTypeIcon(type))
	end

	self.pet, self.id = pet, id
	self.text = requisite
end


--[[ Tooltips ]]--

function Ability:OnEnter()
	if self.pet.owner then
		PetBattleAbilityTooltip_SetAbilityByID(self.pet.owner, self.pet.index, self.id, self.text and RequiresLevel:format(self.text))
		PetBattleAbilityTooltip_Show('BOTTOM', self, 'TOP')
	else
		local tip = FloatingPetBattleAbilityTooltip
		FloatingPetBattleAbilityTooltip = Tooltip

		FloatingPetBattleAbility_Show(self.id, self.pet:GetStats())
		FloatingPetBattleAbilityTooltip:ClearAllPoints()
		FloatingPetBattleAbilityTooltip:SetPoint('TOPLEFT', self, 'TOPRIGHT', 5, 0)
		FloatingPetBattleAbilityTooltip = tip
	end
end

function Ability:OnLeave()
	Tooltip:Hide()
end