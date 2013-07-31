version = "1.07.08"
--RandomMount
--Original Author: Mike Hendricks(AttilaTheFun)
--Continuing Author: t4t3rt0t
--Description:
--              This add-on makes it simple to summon a random mount it takes into account ridding level, cold weather flying,
--              flying areas, Modifiers available, and summons an appropriate mount.
--              It has a simple interface /mnt: /rmount: Will summon riding/flying mounts in the appropriate areas. mnt and rmount are interchangeable
--                                        /mnt riding: Summons riding mounts in flying areas
--                                        /mnt flying: Attempt to summon a flying mount
--                                        /mnt help: Display help
--                                        /mnt r or f (search Term): Summons a mount based on specified search term
--                                                example: to summon a skeletal warhorse type: /mnt skeletal
--                                        /mnt config: Prints the current configuration
--                                        /mnt rfilter: Toggle mount filtering
--                                        /mnt safefly: Toggle double click to dismount while flying
--                                        /mnt rfilters: List current filters
--                                        /mnt locfilter: Toggle filter to summon only specific mounts in specific locations
--                                        /mnt addloc % (zone:mount name1, mount name2, ...): Add locations and mounts to location checking. Separate mounts with commas. Use * as a wildcard to specify all mounts.
--                                        /mnt removeloc % (zone:mount name1, mount name2, ...): Removes locations and mounts from location checking. Separate mounts with commas.
--                                        /mnt loctable: Print the current location filtering table.
--                                        /mnt clearloc: Clears location filters
--                                        /mnt remove %: Remove all mounts matching % if rfilter is enabled
--                                        /mnt clear: Clears all filters
--                                        /mnt clearrem: Clears the mount removal table
--                                        /mnt whereami: Prints your zone and mini-map zone.
--                                        /mnt title: Enable or disable random title change.
--                                        /mnt icon: Enable or disable changing random mount macro icons to the last summoned mount.
--                                        /mnt setweight # %: Sets a weight # (0 to 1000) for any mounts matching %. Omitting % will set the default weight for mounts without specified weights.
--                                        /mnt PrintHelp("druid: Create a macro for druids that will cancel your form before trying to summon a mount.
--                                        /mnt debug: Toggle debug printing for posting error messages
--                                        /mnt No Flag: Summon a appropriate mount for the area

-- Addon namespace
RMount = {}

-- Create frame for event handling
local RMountFrame = CreateFrame("FRAME", "RMountFrame")
RMountFrame:RegisterEvent("ADDON_LOADED")
function RMount.OnEvent(this, event, ...)
	local arg1 = ...;
	if event == "ADDON_LOADED" and arg1 == "RandomMountContinued" then
		RMount:OnLoad()
	end
end
RMountFrame:SetScript("OnEvent", RMount.OnEvent)

-- Get the Frame that is housing the UIErrorsFrame
local originalOnEvent = UIErrorsFrame:GetScript("OnEvent")
-- Listen for SYSTEM Errors from the UIErrorsFrame
UIErrorsFrame:SetScript("OnEvent", function(self, event, message, r, g, b, ...)
	-- Check the Error Message	
	if message == SPELL_FAILED_NOT_HERE or message == SPELL_FAILED_ONLY_UNDERWATER then
		-- Set mountError to true
		mountError = true
		mountErrorMsg = message
	else
		-- Set mountError to false
		mountError = false
		mountErrorMsg = nil
		-- If error is not what we are looking for then return it to the original Frame
		return originalOnEvent(self, event, message, r, g, b, ...)
	end
end)

-- Sea Mount Database
-- GetCompanionInfo("MOUNT", i) doesn't provide a way to distinguish between (fast land/slow sea) and (slow land/fast sea)
local seaMounts = {
		30174,	--Riding Turtle
		64731,	--Sea Turtle
		--the following should be detected as sea only, added anyways as fallback
		98718,	--Subdued Seahorse
        75207	--Abyssal Seahorse
}


--Old Saved Variables <1.06.13
debug = false                                                           --display debug info if enabled
notWanted = {}                                                          --Mounts that are not wanted to be summoned
removeMount = false                                                     --Enable or disable notWanted mounts
locationChk = true                                                      --enable or disable specific mounts in special locations
locations = {}                                                          --locations to summon specific mounts(specialMounts)
specialMounts = {}                                                      --special mounts to summon if in a specific location
rndTitle = false                                                        --Randomly change the title when summoning a mount
safeFly = false                                                         --Safe flying dismount if flying
macroIcon = false                                                       --Update the macro icon with last summoned mount
zones = {}                                                              --Contains the list of location filters
mountError = false
mountErrorMsg = nil


--New Saved Variables >=1.06.13
local defaultVars = {
--only change version if DB format changes
version = 1,
useGVars = true,
weights = {},
defaultWeight = 100
}

--upvars
local mountCache = {air={}, land={}, sea={}, all={}, search={}}			--cache data from GetCompanionInfo("MOUNT", i)
local mountCount = {air=0, land=0, sea=0, all=0, search={}}				--# of mounts, rebuild mountCache if it changes
local lastTime = GetTime()												--Safe flying last time that dismount was called
local tailorSkill = 0
local engineerSkill = 0

--bindings
BINDING_HEADER_RANDOMMOUNT = "Random Mount"
BINDING_NAME_RANDOMMOUNT_REG = "Auto Summon"
BINDING_NAME_RANDOMMOUNT_RIDING = "Summon Riding"
BINDING_NAME_RANDOMMOUNT_FLYING = "Summon Flying"
BINDING_NAME_RANDOMMOUNT_SWIMMING = "Summon Swimming"

-- Run at Load
function RMount:OnLoad()
	SlashCmdList["RandomMount"] = FindMount;
	SLASH_RandomMount1 = "/mnt";
	SLASH_RandomMount2 = "/rmount";

--Handle SavedVariables
	if not rMountCVars then
		rMountCVars = {}
	end
	RMount.CopyDefaultVars(defaultVars, rMountCVars)
	if not rMountGVars then
		rMountGVars = {}
	end
	RMount.CopyDefaultVars(defaultVars, rMountGVars)
	if rMountCVars.useGVars then
		rMountVars = rMountGVars
	else
		rMountVars = rMountCVars
	end
end

function RMount.CopyDefaultVars(src, dst)
	if not src then return { } end
	if not dst then dst = { } end
	for k, v in pairs(src) do
		if type(v) == "table" then
			dst[k] = RMount.CopyDefaultVars(v, dst[k])
		elseif type(v) ~= type(dst[k]) then
			dst[k] = v
		end
	end
	return dst
end

-- Build mountCache
--GetCompanionInfo("MOUNT") 6th return values
-- 07 0b00000111 Air only
-- 12 0b00001100 Sea only
-- 15 0b00001111 Air/Sea
-- 23 0b00010111 Air/Land
-- 29 0b00011101 Land/Sea
-- 31 0b00011111 Air/Land/Sea
--Capabilities Bitmasks
-- 01 0b00000001 ???
-- 02 0b00000010 Usable for air
-- 04 0b00000100 ???
-- 08 0b00001000 Usable for water
-- 16 0b00010000 Usable for land
function BuildMountCache()
	mountCache = {air={}, land={}, sea={}, all={}, search={}}
	mountCount = {air=0, land=0, sea=0, all=0, search={}}
	mountCount.all = GetNumCompanions("MOUNT")
	for i=1, mountCount.all do
		local creatureID, creatureName, creatureSpellID, icon, _, capabilities = GetCompanionInfo("MOUNT", i)
		if capabilities == 7 or capabilities == 15 or capabilities == 23 or capabilities == 31 then
			mountCache.air[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
			mountCount.air = mountCount.air + 1
		elseif capabilities == 12 or IsSeaMount(creatureSpellID) then
			mountCache.sea[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
			mountCount.sea = mountCount.sea + 1
		end
		if capabilities == 23 or capabilities == 29 or capabilities == 31 then
			mountCache.land[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
			mountCount.land = mountCount.land + 1
		end
		mountCache.all[i] = {
			creatureID,
			creatureName,
			creatureSpellID,
			icon,
			capabilities
		}
		--Check if capabilities flags don't match any known values
		if not (capabilities == 7) and not (capabilities == 12) and not (capabilities == 15) and 
		not (capabilities == 23) and not (capabilities == 29) and not (capabilities == 31) then
			if debug then PrintHelp("Detected unknown mount capabilities flag: " .. capabilities, "FFff0000") end
			
			--Determine land/air capabilities at least
			if bit.band(2,capabilities) == 2 then
				mountCache.air[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
				mountCount.air = mountCount.air + 1
			end
			if bit.band(16,capabilities) == 16 then
				mountCache.land[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
				mountCount.land = mountCount.land + 1
			end	
		end
	end
end

-- todo: combine BuildSearchCache with BuildMountCache
-- todo: create function - mountTypes = DecodeMountTypes(capabilities)
-- Create cache of mounts matching search pattern
function BuildSearchCache(search)
	local creatureSpellID
	if not mountCache.search[search] then
		mountCache.search[search] = {air={}, land={}, sea={}, all={}}
	else
		-- bail if cache already exists
		return
	end
	if not mountCount.search[search] then
		mountCount.search[search] = {air=0, land=0, sea=0, all=0}
	end

	for i=1,mountCount.all do
		if strfind(strlower(mountCache.all[i][2]), strlower(search)) then
			creatureSpellID = mountCache.all[i][3]
			capabilities = mountCache.all[i][5]
			if capabilities == 7 or capabilities == 15 or capabilities == 23 or capabilities == 31 then
				mountCache.search[search].air[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
				mountCount.search[search].air = mountCount.air + 1
			elseif capabilities == 12 or IsSeaMount(creatureSpellID) then
				mountCache.search[search].sea[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
				mountCount.search[search].sea = mountCount.sea + 1
			end
			if capabilities == 23 or capabilities == 29 or capabilities == 31 then
				mountCache.search[search].land[i] = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
				mountCount.search[search].land = mountCount.land + 1
			end
		end
	end
	return
end

-- Select a mount
function GetRandomMount(type, ridingSK, zoneText, canFly, search, inLocation, zoneChk)
	local count
	local lastMount
	local s = false
	local chance
	if search ~= '' then
		t = mountCache.search[search][type]
	else
		t = mountCache[type]
	end
	local total = GetMountWeightTotal(t)
	
	for i=1, 10000 do
		count = math.random(0, total)
		for j, weight in pairs(t) do
			count = count - weight
			lastMount = j
			if count <= 0 then
				chance = weight * 100 / total
				break
			end
		end
		-- Test Mount
		s = TestMount(lastMount, ridingSK, zoneText, canFly, inLocation, zoneChk, chance)
		if s then
			break
		end
	end
	local casting = UnitCastingInfo("player")
	-- Summon Mount
	if s then
		CallCompanion("MOUNT", lastMount)
		if not mountError and not casting then
			-- Set Icon of the Mount
			RMount.SetMacroIcon(lastMount)
		end
	end
end

-- Count total of all weights
function GetMountWeightTotal(mountTable)
	local total = 0
	for _, weight in pairs(mountTable) do
		total = total + weight
	end
	return total
end

-- Check if mount can swim fast
function IsSeaMount(creatureSpellID)
	for _, value in ipairs(seaMounts) do
		if value == creatureSpellID then
			return true
		end
	end
	return false
end

-- Check if you can use a Sea mount in this zone
function CanSwimHere()
	zone = GetCurrentMapAreaID()
	if mountCount.sea > 0 then
		for j, _ in pairs(mountCache.sea) do
			local creatureSpellID = mountCache.all[j][3]
			if creatureSpellID == 75207 and zone ~= 614 and zone ~= 615 and zone ~= 610 then
				return false
			end
		end
		return true
	end
	return false
end

-- Set weight of mounts matching nameSearch
function SetMountWeights(weight, nameSearch)
	if weight then
		weight = min(floor(abs(weight)), 1000)
	end
	if nameSearch == '' then
		local oldweight = rMountVars.defaultWeight or 100
		rMountVars.defaultWeight = weight
		PrintHelp("Default weight changed from " .. oldweight .. " to " .. weight, "FF00ffff")
	else
		for i=1, mountCount.all do
			if strfind(strlower(mountCache.all[i][2]), strlower(nameSearch)) then
				local creatureSpellID = mountCache.all[i][3]
				local oldweight = rMountVars.weights[creatureSpellID] or rMountVars.defaultWeight
				rMountVars.weights[creatureSpellID] = weight
				if weight then
					PrintHelp(mountCache.all[i][2] .. " weight changed from " .. oldweight .. " to " .. weight, "FF00ffff")
				else
					PrintHelp(mountCache.all[i][2] .. " weight reset from " .. oldweight .. " to default " .. rMountVars.defaultWeight, "FF00ffff")
				end
			end
		end
	end
	--Rebuild cache with new weights
	BuildMountCache()
end

-- Check if you can fly in this zone
function CanFlyHere()
	if mountCount.air == 0 then
		if debug then PrintHelp("No air mounts detected", "FFff0000") end
		return false
	end
	SetMapToCurrentZone()
	local zoneID = GetCurrentMapAreaID()
	local zoneNum = GetCurrentMapZone()
	local ridingSkill, classicLicense, coldLicense, pandaLicense = GetRidingSkill()

	-- Check for flyable area
	if not IsFlyableArea() then
		return(false)
	elseif IsFlyableArea() then
		if zoneID == 773 or zoneID == 756 then
			return(false)
		else
			for j=1,6 do
				Index = {GetMapZones(j)}
				-- Zone Check
				for i, zone in ipairs(Index) do
					if zoneNum == i then
						if classicLicense == 1 and (j == 1 or j == 2 or j == 5) then
							return(true)
						elseif ridingSkill >= 225 and j == 3 then
							return(true)
						elseif coldLicense == 1 and j == 4 then
							return(true)
						elseif pandaLicense == 1 and j == 6 then
						    return(true)
						end
					end
				end
			end
			return(false)
   		end
	end
end

-- Get your Riding Skill Level
function GetRidingSkill()
	local ridingSkill = 0
	local classicLicense = 0
	local coldLicense = 0
	local pandaLicense = 0
	local serpentLicense = 0
	
	if IsSpellKnown(90265) then
		ridingSkill = 375
	elseif IsSpellKnown(34091) then
		ridingSkill = 300
	elseif IsSpellKnown(34090) then
		ridingSkill = 225
	elseif IsSpellKnown(33391) then
		ridingSkill = 150
	elseif IsSpellKnown(33388) then
		ridingSkill = 75
	end
	if IsSpellKnown(90267) then
		classicLicense = 1
	end
	if IsSpellKnown(54197) then
		coldLicense = 1
	end
	if IsSpellKnown(115913) then
		pandaLicense = 1
	end
	if IsSpellKnown(130487) then
		serpentLicense = 1
	end
	return ridingSkill, classicLicense, coldLicense, pandaLicense, serpentLicense
end

-- Get your Profession Skill Level
function GetProfessionSkill()
	local prof1, prof2 = GetProfessions()
	prof1 = prof1 or 0
	prof2 = prof2 or 0
	local _, _, skill1, _, _, _, skillLine1 = GetProfessionInfo(prof1)
	local _, _, skill2, _, _, _, skillLine2 = GetProfessionInfo(prof2)
	skillLine1 = skillLine1 or 0
	skillLine2 = skillLine2 or 0
	if skillLine1 == 197 then
		tailorSkill = skill1 or 0
	elseif skillLine2 == 197 then
		tailorSkill = skill2 or 0
	end
	if skillLine1 == 202 then
		engineerSkill = skill1 or 0
	elseif skillLine2 == 202 then
		engineerSkill = skill2 or 0
	end
end

-- Check Special Mounts
function lfmChk(creatureName)
	if locationChk then
		for j, k in ipairs(specialMounts) do
			if strfind(strlower(creatureName), strlower(k)) then
				return(true)
			end
		end
		if #locations > 0 then
			PrintHelp("Detected location filtering usage. This feature may soon be removed.", "FFff0000")
			PrintHelp("If you would like this feature to remain then please comment on curse.com", "FFff0000")
		end
	end
	return(false)
end

-- from http://lua-users.org/wiki/SplitJoin  by PeterPrade
function splitString(delimiter, text)
	local list = {}
	local pos = 1
	if strfind("", delimiter, 1) then -- this would result in endless loops
		error("delimiter matches empty string!")
	end
	while 1 do
		local first, last = strfind(text, delimiter, pos)
		if first then -- found?
			tinsert(list, strsub(text, pos, first-1))
			pos = last+1
		else
			tinsert(list, strsub(text, pos))
			break
		end
	end
	return list
end

-- Add Mount to Locations List
function AddLocF(info)
	if string.len(info) > 0 then
		local i = strfind(info, ":");
		local locVar = strsub(info, 0, i - 1)
		local mntVar = splitString(",", strsub(info, i + 1));
		if not zones[strlower(locVar)] then
			zones[strlower(locVar)] = {}
		end
		for i, v in ipairs(mntVar) do
			local found = false
			for n, item in ipairs(zones[strlower(locVar)]) do
				if v == item then
					PrintHelp(v .. " already added.", "FF00ff00")
					found = true
					break
				end
			end
			if not found then
				tinsert(zones[strlower(locVar)], v)
			end
		end
		PrintHelp("When in " .. strlower(locVar) .. " mounts with " .. table.concat(zones[strlower(locVar)], ",") .. " will be summoned.", "FF00ff00")
	end
end

-- Print the Location List
function printLocF()
	PrintHelp("Location Mount database", "FFff00ff")
	for i, v in pairs(zones) do
		PrintHelp(i .. ":", "FF00ff00")
		for j, w in ipairs(zones[i]) do
			PrintHelp("       " .. w, "FF00ff99")
		end
	end
end

-- Remove a Filtered Location
function removeLocF(info)
	if string.len(info) > 0 then
		local i = strfind(info, ":");
		--if : not found then remove zone table
		if not i then
			PrintHelp("Zone " .. info .. " is no longer filtered.", "FF00ff00")
			zones[info] = nil
		else
			local locVar = strsub(info, 0, i - 1)
			local mntVar = splitString(",", strsub(info, i + 1))
			for i, v in ipairs(mntVar) do
				local found = false
				for n, item in ipairs(zones[locVar]) do
					if v == item then
						PrintHelp(v .. " removed from " .. locVar .. ".", "FF00ff99")
						tremove(zones[locVar], n)
						found = true
						break
					end
 				end
				if not found then
					PrintHelp(v .. " not found in " .. locVar .. ".", "FF00ff99")
				end
			end
			if #zones[locVar] == 0 then
				PrintHelp(locVar .. " removed because it has no mounts.", "FF00ff00")
				zones[locVar] = nil
			end
		end
	end
	-- if : found then remove zone table elements, not entire table, if table is empty place * to signify empty
end

-- Change the Character Title
function Title()
	if rndTitle then
		local titles = {};
		for i=1,GetNumTitles(),1 do
			if IsTitleKnown(i) == 1 then
				tinsert(titles, i)
			end
		end
		SetCurrentTitle(titles[random(# titles)])
	end
end

-- Check to see if we are Swimming or in Vashj'ir
function checkSwimming()
	local zone = GetCurrentMapAreaID()
	if IsSwimming() then
		return(true)
	elseif not IsSwimming() and (zone == 614 or zone == 615 or zone == 610) then
		return(true)
	else
		return(false)
	end
end

-- Change the Macro Icon
function RMount.SetMacroIcon(r)
    if macroIcon then    
        local _, _, _, icon = GetCompanionInfo("MOUNT", r)  
        -- loop to change the icons of macros that are calling /rmount
        local numglobal,_ = GetNumMacros()
        for j=1,numglobal do
            local mbody = GetMacroBody(j)
            if strfind(mbody,"/rmount") or strfind(mbody,"/mnt") then
                EditMacro(j,nil,strsub(icon,17),nil)
            end
        end
    end
end

-- Main Mount Call
function FindMount(arg1)
	-- Check Profession Skills
	GetProfessionSkill()
	-- Check if # of mounts changed
	if (mountCount.all ~= GetNumCompanions("MOUNT")) then
		BuildMountCache()
	end
	local s = 0
	local r
	local search = ""
	local zoneText = GetRealZoneText()	-- Get Zone Text
	local canFly = CanFlyHere()			-- Check if can fly
	local outdoors = IsOutdoors()		-- Check if outdoors
	local ridingSK = GetRidingSkill()	-- Set Riding Skill
	local inLocation = false			--Used to check for location
	local zoneChk = true
	local removeMountPrev = removeMount
	local mountType = nil				--air/land/sea mount

	-- Check for macro modifiers
	argv, _ = SecureCmdOptionParse(arg1)
	-- Bail if no macro conditions matched
	if argv == nil then return end
	
	-- Check argument after /mnt or /rmount
	if argv == "help" then
		PrintHelp("Random Mount " .. version .. " optional flags:", "FFFFFF00")
		PrintHelp("/mnt: /rmount: Will summon swimming/riding/flying mounts in the appropriate areas. mnt and rmount are interchangeable", "FFFFFF00")
		PrintHelp("riding: Attempt to summon a ground mount", "FFFFFF00")
		PrintHelp("flying: Attempt to summon a flying mount", "FFFFFF00")
		PrintHelp("swimming: Attempt to summon a swimming mount", "FFFFFF00")
		PrintHelp("help: Display help", "FFFFFF00")
		PrintHelp("[mod:Modifier Name]: Use any Modifier Blizzard Supports", "FFFFFF00")
		PrintHelp("r %: Summons a ground mount matching % search term \rexample: to summon a skeletal warhorse type: /mnt r skeletal", "FFFFFF00")
		PrintHelp("f %: Summons a flying mount matching % search term \rexample: to summon a proto-drake type: /mnt f proto", "FFFFFF00")
		PrintHelp("s %: Summons a swimming mount matching % search term \rexample: to summon a turtle type: /mnt s turtle", "FFFFFF00")
		PrintHelp("config: Prints the current configuration", "FFFFFF00")
		PrintHelp("safefly: Toggle double click to dismount while flying", "FFFFFF00")
		PrintHelp("rfilters: List current filters", "FFFFFF00")
		PrintHelp("locfilter: Toggle filter to summon only specific mounts in specific locations", "FFFFFF00")
		PrintHelp("addloc % (zone:mount name1, mount name2, ...): Add locations and mounts to location checking. Separate mounts with commas. Use * as a wildcard to specify all mounts.", "FFFFFF00")
		PrintHelp("removeloc % (zone:mount name1, mount name2, ...): Removes locations and mounts from location checking. Separate mounts with commas.", "FFFFFF00")
		PrintHelp("loctable: Print the current location filtering table.", "FFFFFF00")
		PrintHelp("clearloc: Clears location filters", "FFFFFF00")
		PrintHelp("remove %: Remove all mounts matching % if rfilter is enabled", "FFFFFF00")
		PrintHelp("clear: Clears all filters", "FFFFFF00")
		PrintHelp("clearrem: Clears the mount removal table", "FFFFFF00")
		PrintHelp("whereami: Prints your zone and mini-map zone, and map coordinates.", "FFFFFF00")
		PrintHelp("title: Enable or disable random title change.", "FFFFFF00")
		PrintHelp("icon: Enable or disable changing random mount macro icons to the last summoned mount.", "FFFFFF00")
		PrintHelp("setweight # %: Sets a weight # (0 to 1000) for any mounts matching %. \rOmitting % will set the default weight to # for mounts without specified weights. \rOmitting # will clear any weights set for any mounts matching %.", "FFFFFF00")
		PrintHelp("debug: Toggle debug printing for posting error messages", "FFFFFF00")
		return
	elseif argv == "config" then
		if debug then
		 	PrintHelp("Debug: Enabled", "FF00ff00")
		else
			PrintHelp("Debug: Disabled", "FFff0000")
		end
		if removeMount then
			PrintHelp("Mounts filtered: " .. table.concat(notWanted, ", "), "FF00ff00")
		else
			PrintHelp("Mount Removal Disabled.", "FFff0000")
		end
		if safeFly then
			PrintHelp("Safe flying enabled. Double click to dismount while flying", "FF00ff00")
		else
			PrintHelp("Safe flying disabled.", "FFff0000")
		end
		if rndTitle then
			PrintHelp("Random title enabled.", "FF00ff00")
		else
			PrintHelp("Random title disabled.", "FFff0000")
		end
		if macroIcon then
			PrintHelp("Icon changing enabled.", "FF00ff00")
		else
			PrintHelp("Icon changing disabled.", "FFff0000")
		end
		return
	elseif argv == "whereami" then
		local posX, posY = GetPlayerMapPosition("player")
		PrintHelp("You are in " .. zoneText .. ", " .. GetMinimapZoneText() .. ", " .. posX .. ", " .. posY, "FF00ff00")
		return
	elseif argv == "debug" then
		if debug == false then
			debug = true
			PrintHelp("Debug information enabled.", "FF00ff00")
		elseif debug == true then
			debug = false
			PrintHelp("Debug information disabled.", "FFff0000")
		end
		return
	elseif argv == "locfilter" then
		if locationChk == false then
			locationChk = true
			PrintHelp("Location mount filtering enabled.", "FF00ff00")
		elseif locationChk == true then
			locationChk = false
			PrintHelp("Location mount filtering disabled.", "FFff0000")
		end
		return
	elseif argv == "rfilter" then
		if removeMount == false then
			removeMount = true
			removeMountPrev = removeMount
			PrintHelp("Mount removal enabled.", "FF00ff00")
		elseif removeMount == true then
			removeMount = false
			removeMountPrev = removeMount
			PrintHelp("Mount removal disabled.", "FFff0000")
		end
		return
	elseif argv == "safefly" then
		if safeFly == false then
			safeFly = true
			PrintHelp("Safe flying enabled. Double click to dismount while flying", "FF00ff00")
		elseif safeFly == true then
			safeFly = false
			PrintHelp("Safe flying disabled.", "FFff0000")
		end
		return
	elseif argv == "rfilters" then
		if removeMount then
			PrintHelp("Mounts filtered: " .. table.concat(notWanted, ", "), "FF00ffff")
		else
			PrintHelp("Mount removal disabled.", "FFff0000")
		end
		return
	elseif argv == "title" then
		if rndTitle == false then
			rndTitle = true
			PrintHelp("Random title enabled.", "FF00ff00")
		elseif rndTitle == true then
			rndTitle = false
			PrintHelp("Random title disabled.", "FFff0000")
		end
		return
	elseif argv == "icon" then
		if macroIcon == false then
			macroIcon = true
			PrintHelp("Icon changing enabled.", "FF00ff00")
		elseif macroIcon == true then
			macroIcon = false
			PrintHelp("Icon changing disabled.", "FFff0000")
		end
		return
	elseif argv == "clear" then
		notWanted = {}
		zones = {}
		PrintHelp("All tables cleared.", "FF00ffff")
		return
	elseif argv == "clearrem" then
		notWanted = {}
		PrintHelp("Remove mount table cleared.", "FF00ffff")
		return
	elseif argv == "clearloc" then
		zones = {}
		PrintHelp("Special location table cleared.", "FF00ffff")
		return
	elseif argv == "loctable" then
		printLocF()
		return
	elseif argv:find("removeloc") then
		PrintHelp(strsub(argv, 11), "FF00ff99")
		if string.len(strsub(argv, 11)) > 0 then
			removeLocF(strsub(argv, 11))
		end
		return
	elseif argv == "riding" then
		mountType = "land"
	elseif argv == "flying" then
		mountType = "air"
	elseif argv == "swimming" then
		mountType = "sea"
	elseif argv:find("addloc") then
		if string.len(strsub(argv, 8)) > 0 then
			AddLocF(strsub(argv, 8))
		end
		return
	elseif argv:find("remove") then
		local found = false
		if strlen(strsub(argv, 8)) > 0 then
			for n, notW in ipairs(notWanted) do
				if strsub(argv, 8) == notW then
					PrintHelp(strsub(argv, 8) .. " already added.", "FF00ffff")
					found = true
					break
				end
			end
			--PrintHelp(table.concat(notWanted, ", "), "FF00ffff")
			if not found then
				PrintHelp("Mounts matching " .. strsub(argv, 8) .. " will no longer be summoned.", "FF00ff00")
				tinsert(notWanted, strsub(argv, 8))
			end
		end
		return
	elseif argv:find("setweight") then
		argv = strsub(argv, 11) or ""
		if strlen(argv) > 0 then
			local weight = string.match(argv, "%d+")
			local nameSearch = string.match(argv, "%a[%a%s]*%a$") or ""
			SetMountWeights(weight, nameSearch)
		end
		return
--	elseif argv == "rnd" then
--		r = random(GetNumCompanions("MOUNT"))
--		PrintHelp(r, "FF00ffff")
	elseif strfind(argv, "r%s", 1) then
		mountType = "land"
		search = strlower(strsub(argv, 3))
	elseif strfind(argv, "f%s", 1) then
		mountType = "air"
		search = strlower(strsub(argv, 3))
	elseif strfind(argv, "s%s", 1) then
		mountType = "sea"
		search = strlower(strsub(argv, 3))
	elseif argv == '' then
		search = argv
	else
		PrintHelp("No matching mount found.", "FF00ffff")
		return
	end
	-- Check if we are Mounted
	if IsMounted() then
		if safeFly and IsFlying() then
			local curTime = GetTime()
			if curTime < (lastTime + 0.5) then
				Dismount()
				return
			else
				lastTime = curTime
				return
			end
		else
			Dismount()
			return
		end
	elseif CanExitVehicle() then
		VehicleExit()
		return
	end
	-- Run Random Title
	Title() 
	-- Bail if no riding skill, no mounts, or if all-terrain mounts(land/sea/air) are not currently usable
	if ridingSK < 75 or mountCount.all == 0 or not IsUsableSpell(121838) then return end
	-- Process Search Mount
	if search ~= '' then
		if not mountType then
			mountType = "all"
		end
		BuildSearchCache(search, mountType)
		if mountCount.search[search][mountType] > 0 then
			GetRandomMount(mountType, ridingSK, zoneText, canFly, search, inLocation, zoneChk)
		else
			PrintHelp("No matching mount found.", "FF00ffff")
		end
		return
	end
	
	-- If type specified then use it
	if mountType then
	GetRandomMount(mountType, ridingSK, zoneText, canFly, search, inLocation, zoneChk)
	-- Check if swimming and not at the surface first
	elseif checkSwimming() and not IsUsableSpell(88744) then
		-- Check if have usable sea mounts
		if CanSwimHere() then
			-- Get Sea Mount
			GetRandomMount("sea", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
		else				
			-- We're under the surface with no sea mounts
			-- Try to get an air mount first but few air mounts also work underwater
			if canFly then
				GetRandomMount("air", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
			end
		end
		-- Some indoor places in Vashj'ir like Nespirah can only use land mounts even though swimming checks all pass		
		-- So try to get a land mount in case we're indoors in Vashj'ir or at the surface and can't fly
		-- It might summon the land mount even if another is already being summoned
		GetRandomMount("land", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
	-- Check if we can fly
	elseif canFly then
		-- Get Air Mount
		GetRandomMount("air", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
	else
		-- Get Land Mount
		GetRandomMount("land", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
	end
	
--[[	
	-- Check if you Can Fly, IsUsableSpell used for swimming on surface check
	if canFly and IsUsableSpell(88744) then
		-- Repeat picking a Mount until one is found that is appropriate
		GetRandomMount("air", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
		-- Check if Summon Failed
		if mountError then
			canFly = false
			-- Check if you are Swimming
			if checkSwimming() then
				-- Get Sea Mount
				GetRandomMount("sea", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
			end
			-- Reset mountError
			mountError = false
			-- Repeat picking a Mount until one is found that is appropriate
			GetRandomMount("air", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
			-- Check if Summon Failed
			if mountError then
				PrintHelp("Cannot Summon Mount", "FFff0000")
			end
		end
	else
		-- Check if you are Swimming
		if checkSwimming() then
			-- Get Sea Mount
			GetRandomMount("sea", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
		end
		mountError = false
		if mountCount.land ~= 0 then
			-- Repeat picking a Mount until one is found that is appropriate
			GetRandomMount("land", ridingSK, zoneText, canFly, search, inLocation, zoneChk)
			-- Check if Summon Failed
			if mountError then
				PrintHelp("Cannot Summon Mount", "FFff0000")
			end
		end
	end
	]]--
	
	return
end

-- Test the Mount
function TestMount(r, ridingSK, zoneText, canFly, inLocation, zoneChk, chance)
	local creatureName = mountCache.all[r][2]
	local creatureSpellID = mountCache.all[r][3]
	local capabilities = mountCache.all[r][5]
	local realZone = GetCurrentMapAreaID()
	
	-- Check if unusable (does not ensure it's usable)
	local usable = IsUsableSpell(creatureSpellID)
	if not usable then
		if debug then PrintHelp("IsUsableSpell() returned false - Name: " .. creatureName .. ", ID: " .. creatureSpellID, "FFff0000") end
		return false
	end
	--Remove Mount processing
	if removeMount then
		for n, notW in ipairs(notWanted) do
			if strfind(strlower(creatureName), strlower(notW)) or creatureSpellID == tonumber(notW) then
				return(false)
			end
		end
	end
	--Abyssal Seahorse
	if creatureSpellID == 75207 and realZone ~= 614 and realZone ~= 615 and realZone ~= 610 then
		return false
	end
	--profession mounts
	if (creatureSpellID == 44153 and engineerSkill < 300) or
		(creatureSpellID == 44151 and engineerSkill < 375) or
		(creatureSpellID == 61451 and tailorSkill < 300) or
		(creatureSpellID == 75596 and tailorSkill < 425) or
		(creatureSpellID == 61309 and tailorSkill < 425) then
		if debug then PrintHelp("Profession skill too low - Name: " .. creatureName .. ", ID: " .. creatureSpellID, "FFff0000") end
		return false
	end
	--Zone Checking
	if locationChk and zoneChk then
		miniMapZone = GetMinimapZoneText()
		local found = false
		if zones[strlower(miniMapZone)] then
			zoneChk = false
			for i, type in ipairs(zones[strlower(miniMapZone)]) do
				if strfind(strlower(creatureName), strlower(type)) or type == "*" then
					zoneChk = true
					found = true
					if debug then PrintHelp(type .. " : " .. creatureName .. " is found", "FFffff00") end
					break
				end
			end
		end
		-- Check your Zone
		if zones[strlower(zoneText)] then
			if not found then
				zoneChk = false
				for i, type in ipairs(zones[strlower(zoneText)]) do
					if strfind(strlower(creatureName), strlower(type)) or type == "*" then
						zoneChk = true
						if debug then PrintHelp(type .. " : " .. creatureName .. " is found", "FFffff00") end
						break
					end
				end
			end
		end
		if not zoneChk then
			return(false)
		end
	end
	--flying mounts
	if canFly then
		if inLocation then
			if lfmChk(creatureName) then
				if debug then PrintSummon("FF00ffff", creatureName, r, ridingSK, capabilities, zoneText, canFly, creatureSpellID, chance, 11) end
				return(true)
			end
		else
			if debug then PrintSummon("FF00ffff", creatureName, r, ridingSK, capabilities, zoneText, canFly, creatureSpellID, chance, 10) end
			return(true)
		end
	--Regular Mounts
	else
		if inLocation then
			if lfmChk(creatureName) then
				if debug then PrintSummon("FF00ffff", creatureName, r, ridingSK, capabilities, zoneText, canFly, creatureSpellID, chance, 51) end
				return(true)
			end
		else
			if debug then PrintSummon("FF00ffff", creatureName, r, ridingSK, capabilities, zoneText, canFly, creatureSpellID, chance, 50) end
			return(true)
		end
	end
end

-- Print Help
function PrintHelp(cmd, color)
	print(format('|c%s%s|r', color, cmd))
end

-- Print in Summon Color
function PrintSummon(color, creatureName, r, ridingSK, capabilities, zoneText, canFly, creatureSpellID, chance, errorNum)
    canFly = tostring(canFly)
	print(format("|c%s%s - Mnt#:%s - Skill: %s - type:%s - %s - %s - flyZone:%s - cID:%s - chance:%.2f%% - cond:%s|r", color, creatureName, r, ridingSK, capabilities, zoneText, GetMinimapZoneText(), canFly, creatureSpellID, chance, errorNum))
end
