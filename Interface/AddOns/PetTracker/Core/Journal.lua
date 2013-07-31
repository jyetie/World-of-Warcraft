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
local Journal = Addon:NewModule('Journal')
local Cache = LibStub('LibPetJournal-2.0')
local Server = C_PetJournal


--[[ Progress ]]--

function Journal:GetCurrentProgress()
	return self:GetProgressIn(Addon.zone)
end

function Journal:GetProgressIn(...)
	local progress = {total = 0}
	for i = 0, Addon.MaxQuality do
		progress[i] = {total = 0}
	end
	
	local species = self:GetSpeciesIn(...)
	for specie in pairs(species) do
		local pet, quality, level = self:GetBestOwned(specie)
		local quality = progress[quality]

		progress.total = progress.total + 1
		quality.total = quality.total + 1
		
		quality[level] = quality[level] or {}
		tinsert(quality[level], specie)
	end
	
	return progress
end

function Journal:GetBestOwned(specie)
	local quality, level, best = 0, 0
	
	for i, pet in pairs(self:GetOwned(specie)) do
		local q = self:GetQuality(pet)
		local l = self:GetLevel(pet)

		if q > quality or (q == quality and l > level) then
			quality, level = q, l
			best = pet
		end
	end
	
	return best, quality, level
end

function Journal:GetOwned(specie)
	local list = {}
	for _, pet in Cache:IteratePetIDs() do
		if self:GetSpecie(pet) == specie then
			tinsert(list, pet)
		end
	end
	
	return list
end


--[[ Info ]]--

function Journal:IsSpecial(specie)
	return PetTracker_Specials:find(specie)
end

function Journal:GetType(specie)
	return select(3, self:GetInfo(specie))
end

function Journal:GetSource(specie)
	local source = select(5, self:GetInfo(specie))

	for i = 1, Server.GetNumPetSources() do
		local name = Addon:GetSourceName(i)
		if source:find('^|c%w+' .. name) then
			return i, name
		end
	end
end

function Journal:GetInfo(specie)
	return Server.GetPetInfoBySpeciesID(specie)
end


--[[ Display ]]--

function Journal:GetTypeName(specie)
	return Addon:GetTypeName(self:GetType(specie))
end

function Journal:GetTypeIcon(specie)
	return Addon:GetTypeIcon(self:GetType(specie))
end

function Journal:GetSourceIcon(specie)
	return Addon:GetSourceIcon(self:GetSource(specie))
end


--[[ Stats ]]--

function Journal:GetQuality(pet)
	return select(5, Server.GetPetStats(pet))
end

function Journal:GetLevel(pet)
	return select(3, Server.GetPetInfoByPetID(pet))
end

function Journal:GetSpecie(pet)
	return Server.GetPetInfoByPetID(pet)
end


--[[ Locations ]]--

function Journal:GetSpeciesIn(zone)
	return PetTracker_Species[zone] or {}
end

function Journal:GetStablesIn(zone, level)
	zone = PetTracker_Stables[zone]
	return zone and zone[level] or ''
end