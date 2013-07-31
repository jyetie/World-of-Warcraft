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

local Upgrade = PetTracker:NewModule('Alerts', SushiGlowBox(PetBattleFrame))
local Bangs = {}

local EnemyIcon = PetBattleFrame.ActiveEnemy.Icon
local Battle = PetTracker.Battle


--[[ Manager ]]--

function Upgrade:Startup()
	self:SetPoint('TOP', EnemyIcon, 'BOTTOM', 0, -30)
	self:SetText(PetTracker.Locals.UpgradeAlert)
	self:SetDirection('TOP')
	self:SetFrameStrata('HIGH')
	
	self:SetScript('OnEvent', self.ToggleAll)
	self:RegisterEvent('PET_JOURNAL_LIST_UPDATE')

	self:SetHook('PetBattleFrame_Display', 'ToggleAll')
	self:SetHook('PetBattleUnitFrame_UpdateDisplay', 'ToggleBang')
end

function Upgrade:SetHook(target, method)
	hooksecurefunc(target, self[method])
end

function Upgrade:ToggleAll()
	Upgrade:SetShown(Battle:AnyUpgrade())
	
	for frame in pairs(Bangs) do
		PetBattleUnitFrame_UpdateDisplay(frame)
	end
end


--[[ Bangs ]]--

function Upgrade:ToggleBang()
	local pet = Battle:Get(self.petOwner, self.petIndex)
	if not pet:IsAlly() then
		Upgrade.GetBang(self):SetShown(pet:IsUpgrade())
	end
end

function Upgrade:GetBang()
	return Bangs[self] or Upgrade.CreateBang(self)
end

function Upgrade:CreateBang()
	local size = max(self.Icon:GetHeight() / 2.5, 18)
	local bang = self:CreateTexture(nil, 'OVERLAY')
	bang:SetTexture('Interface/GossipFrame/AvailableQuestIcon')
	bang:SetPoint('TOP', self.Icon, 'TOPRIGHT', -2, -10)
	bang:SetSize(size, size)
	
	Bangs[self] = bang
	return bang
end