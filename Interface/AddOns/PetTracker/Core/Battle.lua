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
local Server, Journal = C_PetBattles, C_PetJournal

local Battle = Addon:NewModule('Battle')
local Player = LE_BATTLE_PET_ALLY
local Enemy = LE_BATTLE_PET_ENEMY
local PET_BATTLE = 5


--[[ Static ]]--

function Battle:Get(owner, index)
	return setmetatable({
		owner = owner,
		index = index,
	}, self)
end

function Battle:GetCurrent(owner)
	local index = Server.GetActivePet(owner)
	return self:Get(owner, index)
end

function Battle:AnyUpgrade()
	for i = 1, self:GetNum(Enemy) do
		local pet = self:Get(Enemy, i)
		if pet:IsUpgrade() then
			return true
		end
	end

	return false
end

function Battle:GetNum(owner)
	return Server.GetNumPets(owner)
end

function Battle:IsPvE()
	return Server.IsPlayerNPC(Enemy)
end


--[[ Status ]]--

function Battle:Swap()
	if self:IsAlly() and Server.CanPetSwapIn(self.index) then
		Server.ChangePet(self.index)
		return true
	end
end

function Battle:Exists()
	return self:GetNum(self.owner) >= self.index
end

function Battle:IsUpgrade()
	if self:IsWildBattle() then 
		local specie = self:GetSpecie()

		if specie and Addon.Journal:GetSource(specie) == PET_BATTLE then
			local pet, quality, level = Addon.Journal:GetBestOwned(specie)

			if self:GetQuality() > quality then
				return true

			elseif self:GetQuality() == quality then
				if level > 20 then
					level = level + 2
				elseif level > 15 then
					level = level + 1
				end

				return self:GetLevel() > level
			end
		end
	end

	return false
end

function Battle:IsAlly()
	return self.owner == Player
end

function Battle:IsAlive()
	return self:GetHealth() > 0
end


--[[ Abilities ]]--

function Battle:GetAbilityID(i)
	return self:GetAbilityInfo(i) or self:GetAbilityList()[i]
end

function Battle:GetAbilityStatus(i)
	local usable, cooldown = self:GetAbilityState(i)
	local requisite = not (cooldown or usable) and select(2, self:GetAbilityList())[i]

	return cooldown ~= 0 and cooldown, requisite
end

function Battle:GetAbilityList()
	return Journal.GetPetAbilityList(self:GetSpecie())
end


--[[ Core ]]--

function Battle:GetSpecie()
	return self:GetPetSpeciesID()
end

function Battle:GetModel()
	return self:GetDisplayID()
end

function Battle:GetQuality()
	return self:GetBreedQuality()
end

function Battle:GetType()
	return self:GetPetType()
end

function Battle:GetStats()
	return self:GetMaxHealth(), self:GetPower(), self:GetSpeed()
end

function Battle:__index(key)
	Battle[key] = Battle[key] or function(self, ...)
		return Server[key](self.owner, self.index, ...)
	end

	return Battle[key]
end