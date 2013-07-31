local _, Addon = ...
local Breeds, Journal = LibStub('LibPetBreedInfo-1.0'), Addon.Journal
local Tamer, Pet = Addon:NewModule('Tamer'), Addon:NewModule('TamerPet')

Tamer.__index = Tamer
Pet.__index = Pet


--[[ Tamer ]]--

function Tamer:Get(name)
	local data = PetTracker_Tamers[name]
	if data then
		local model, pets = data:match('^(%w+):(.*)$')
		local tamer = setmetatable({
			name = name,
			model = tonumber(model, 36)
		}, self)

		for name, specie, model, level, quality in pets:gmatch('([^:]+):(%w+):(%w+):(%w)(%w)') do
			tinsert(tamer, setmetatable({
				Name = name,
				Specie = tonumber(specie, 36),
				Model = tonumber(model, 36),
				Level = tonumber(level, 36),
				Quality = tonumber(quality, 36)
			}, Pet))
		end

		return tamer
	end
end

function Tamer:GetType()
	local list = {}
	for i, pet in ipairs(self) do
		local family = Journal:GetType(pet:GetSpecie())
		if list[family] then
			return family
		else
			list[family] = true
		end
	end
end

function Tamer:GetAbstract()
	local text = self.name
	for i, pet in ipairs(self) do
		text = strjoin(' ', text, pet.Name, Journal:GetTypeName(pet.Specie))
	end

	return text
end

for _, key in pairs {'Level', 'Quality'} do
	Tamer['Get' .. key] = function(self)
		local value = 0
		for i, pet in ipairs(self) do
			value = value + pet['Get' .. key](pet)
		end

		return floor(value / #self + .5)
	end
end


--[[ Pets ]]--

for _, key in pairs {'Name', 'Specie', 'Model', 'Level', 'Quality'} do
	Pet['Get' .. key] = function(self)
		return self[key]
	end
end

function Pet:GetStats()
	return Breeds:GetPetPredictedStats(self.Specie, self:GetBreed(), self.Quality, self.Level)
end

function Pet:GetBreed()
	return Breeds:GetAvailableBreeds(self.Specie)[1]
end

function Pet:GetAbilityID(i)
	local ids = C_PetJournal.GetPetAbilityList(self.Specie)
	for _, id in pairs(ids) do
		i = i - 1
		if i == 0 then
			return id
		end
	end
end

function Pet:GetAbilityStatus(i)
	return nil, nil
end