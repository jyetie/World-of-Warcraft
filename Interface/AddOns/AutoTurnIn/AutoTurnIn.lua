--[[
Feel free to use this source code for any purpose ( except developing nuclear weapon! :)
Please keep original author statement.
@author Alex Shubert (alex.shubert@gmail.com)
]]--
local _G = _G 	--Rumors say that global _G is called by lookup in a super-global table. Have no idea whether it is true. 
local _ 		--Sometimes blizzard exposes "_" variable as a global. 
local addonName, ptable = ...
local L = ptable.L
local C = ptable.CONST
local TOCVersion = GetAddOnMetadata(addonName, "Version")

AutoTurnIn = LibStub("AceAddon-3.0"):NewAddon("AutoTurnIn", "AceEvent-3.0", "AceConsole-3.0")
AutoTurnIn.defaults = {enabled = true, all = false, trivial = false, lootreward = 1, tournament = 2,
					   darkmoonteleport=true, todarkmoon=true, togglekey=4, darkmoonautostart=true, showrewardtext=true, 
					   version=TOCVersion, autoequip = false, debug=false,
					   questlevel=true, watchlevel=true, questshare=false,
					   armor = {}, weapon = {}, stat = {}, secondary = {}}
					   
AutoTurnIn.ldb, AutoTurnIn.allowed = nil, nil
AutoTurnIn.caption = addonName ..' [%s]'
AutoTurnIn.funcList = {[1] = function() return false end, [2]=IsAltKeyDown, [3]=IsControlKeyDown, [4]=IsShiftKeyDown}
AutoTurnIn.OptionsPanel, AutoTurnIn.RewardPanel = nil, nil
AutoTurnIn.autoEquipList={}
AutoTurnIn.questCache={}	-- daily quest cache. Initially is built from player's quest log 
			--ignorind Marsh Lily,Lovely Apple,Jade Cat,Blue Feather,Ruby Shard
AutoTurnIn.TillerGifts={["79264"]=1, ["79265"]=1, ["79266"]=1, ["79267"]=1, ["79268"]=1}

AutoTurnIn.ldbstruct = {
		type = "data source",
		icon = "Interface\\QUESTFRAME\\UI-QuestLog-BookIcon",
		label = addonName,
		text = addonName,
		OnClick = function(clickedframe, button)
			if InterfaceOptionsFrame:IsVisible() then
				if (InterfaceOptionsFrameAddOns.selection:GetName() == AutoTurnIn.OptionsPanel:GetName()) then --"AutoTurnInOptionsPanel"
					InterfaceOptionsFrame_OpenToCategory(AutoTurnIn.RewardPanel)
				elseif (InterfaceOptionsFrameAddOns.selection:GetName() == AutoTurnIn.RewardPanel:GetName() ) then --"AutoTurnInRewardPanel"
					InterfaceOptionsFrameCancel:Click()
				end
			else
				InterfaceOptionsFrame_OpenToCategory(AutoTurnIn.OptionsPanel)
			end
		end,
	}

function AutoTurnIn:OnInitialize()
	self:RegisterChatCommand("au", "ConsoleComand")
end	

function AutoTurnIn:SetEnabled(enabled)
	AutoTurnInCharacterDB.enabled = not not enabled
	if self.ldb then
		self.ldb.text = self.caption:format((AutoTurnInCharacterDB.enabled) and 'on' or 'off' )
		self.ldb.label = self.ldb.text
	end
end

-- quest autocomplete handlers and functions
function AutoTurnIn:OnEnable()
	if (not AutoTurnInCharacterDB) or (not AutoTurnInCharacterDB.version or (AutoTurnInCharacterDB.version < TOCVersion)) then
		AutoTurnInCharacterDB = nil
		self:Print(L["reset"])
	end

	if not AutoTurnInCharacterDB then
		_G.AutoTurnInCharacterDB = CopyTable(self.defaults)
	end
	local DB = AutoTurnInCharacterDB

	if (tonumber(DB.lootreward) == nil) then
		DB.lootreward = 1
	end
	if (tonumber(DB.togglekey) == nil) then
		DB.togglekey = 1
	end
	DB.armor = DB.armor and DB.armor or {}
	DB.weapon = DB.weapon and DB.weapon or {}
	DB.stat = DB.stat and DB.stat or {}
	DB.secondary = DB.secondary and DB.secondary or {}
	DB.trivial = DB.trivial ~= nil and DB.trivial or false

	DB.questlevel = DB.questlevel == nil and true or DB.questlevel
	DB.watchlevel = DB.watchlevel == nil and true or DB.watchlevel
	DB.questshare = DB.questshare == nil and false or DB.questshare

	local LDB = LibStub:GetLibrary("LibDataBroker-1.1", true)
	if LDB then
		self.ldb = LDB:NewDataObject("AutoTurnIn", self.ldbstruct)
	end

	self:SetEnabled(DB.enabled)
	self:RegisterGossipEvents()
	hooksecurefunc("QuestLog_Update", AutoTurnIn.ShowQuestLevelInLog)
	hooksecurefunc(QuestLogScrollFrame, "update", AutoTurnIn.ShowQuestLevelInLog)
	hooksecurefunc("WatchFrame_Update", AutoTurnIn.ShowQuestLevelInWatchFrame)	
end

function AutoTurnIn:OnDisable()
  self:UnregisterAllEvents()
end

function AutoTurnIn:RegisterGossipEvents()
	self:RegisterEvent("QUEST_GREETING")
	self:RegisterEvent("GOSSIP_SHOW")
	self:RegisterEvent("QUEST_DETAIL")
	self:RegisterEvent("QUEST_PROGRESS")
	self:RegisterEvent("QUEST_COMPLETE")
	self:RegisterEvent("QUEST_LOG_UPDATE")
end

function AutoTurnIn:QUEST_LOG_UPDATE()
	if ( GetNumQuestLogEntries() > 0 ) then
		for index=1, GetNumQuestLogEntries() do
			local title, _, _, _, isHeader , _, _, isDaily = GetQuestLogTitle(index)
			if not isHeader and isDaily then
				self.questCache[title] = true
			end
		end
		self:UnregisterEvent("QUEST_LOG_UPDATE")
	end
end

-- returns true if quest offered by gossip is daily
function AutoTurnIn:AllOrCachedDaily(questname)
	return AutoTurnInCharacterDB.all or (not not self.questCache[questname])
end

function AutoTurnIn:AllOrDaily(questname)
	return AutoTurnInCharacterDB.all or (QuestIsDaily() or QuestIsWeekly())
end

-- caches offered by gossip quest as daily
function AutoTurnIn:CacheAsDaily(gossipQuest)
	self.questCache[gossipQuest] = true
end

local p1 = {[true]=L["enabled"], [false]=L["disabled"]}
local p2 = {[true]=L["all"], [false]=L["list"]}
function AutoTurnIn:ConsoleComand(arg)
	arg = strlower(arg)
	if (#arg == 0) then
		InterfaceOptionsFrame_OpenToCategory(AutoTurnIn.OptionsPanel)
	elseif arg == "on" then
		self:SetEnabled(true)
		self:Print(L["enabled"])
	elseif arg == "off"  then
		self:SetEnabled(false)
		self:Print(L["disabled"])	
	end
end

-- returns specified item count on player character. It may be some sort of currency or present in inventory as real items.
function AutoTurnIn:GetItemAmount(isCurrency, item)
	local amount = isCurrency and select(2, GetCurrencyInfo(item)) or GetItemCount(item, nil, true)
	return amount and amount or 0
end

-- returns set 'self.allowed' to true if addon is allowed to handle current gossip conversation
-- Cases when it may not : (addon is enabled and toggle key was pressed) or (addon is disabled and toggle key is not presse)
-- 'forcecheck' does what it name says: forces check
function AutoTurnIn:AllowedToHandle(forcecheck)
	if ( self.allowed == nil or forcecheck ) then
		-- Double 'not' converts possible 'nil' to boolean representation
		local IsModifiedClick = not not self.funcList[AutoTurnInCharacterDB.togglekey]()
		-- it's a simple xor implementation (a ~= b)
		self.allowed = (not not AutoTurnInCharacterDB.enabled) ~= (IsModifiedClick)
	end
	return self.allowed
end

-- OldGossip interaction system. Burn in hell. See http://wowprogramming.com/docs/events/QUEST_GREETING
function AutoTurnIn:QUEST_GREETING()
	if (not self:AllowedToHandle(true)) then
		return
	end

	for index=1, GetNumActiveQuests() do
		local quest, isComplete = GetActiveTitle(index)
		if isComplete and (self:AllOrCachedDaily(quest)) then
			SelectActiveQuest(index)
		end
	end

	for index=1, GetNumAvailableQuests() do
		local isTrivial, isDaily, isRepeatable = GetAvailableQuestInfo(index)
		local triviaAndAllowedOrNotTrivia = (not isTrivial) or AutoTurnInCharacterDB.trivial
		local quest = L.quests[GetAvailableTitle(index)]
		local notBlackListed = not (quest and quest.donotaccept)

		if isDaily then 
			self:CacheAsDaily(GetAvailableTitle(index))
		end

		if (triviaAndAllowedOrNotTrivia and notBlackListed and (AutoTurnInCharacterDB.all or isDaily)) then
			if quest and quest.amount then
				if self:GetItemAmount(quest.currency, quest.item) >= quest.amount then
					SelectAvailableQuest(index)
				end
			else
				SelectAvailableQuest(index)
			end
		end
	end
end

-- (gaq[i+3]) equals "1" if quest is complete, "nil" otherwise
-- why not 	gaq={GetGossipAvailableQuests()}? Well, tables in lua are truncated for values
-- with ending `nil`. So: '#' for {1,nil, "b", nil} returns 1
function AutoTurnIn:VarArgForActiveQuests(...)
    local MOP_INDEX_CONST = 5 -- was '4' in Cataclysm

	for i=1, select("#", ...), MOP_INDEX_CONST do
		local isComplete = select(i+3, ...) -- complete status
		if ( isComplete ) then  
			local questname = select(i, ...)
			if self:AllOrCachedDaily(questname) then
				local quest = L.quests[questname]
				if quest and quest.amount then
					if self:GetItemAmount(quest.currency, quest.item) >= quest.amount then
						SelectGossipActiveQuest(math.floor(i/MOP_INDEX_CONST)+1)
						self.DarkmoonAllowToProceed = false
					end
				else
					SelectGossipActiveQuest(math.floor(i/MOP_INDEX_CONST)+1)
					self.DarkmoonAllowToProceed = false
				end
			end
		end
	end
end

-- like previous function this one works around `nil` values in a list.
function AutoTurnIn:VarArgForAvailableQuests(...)
	local MOP_INDEX_CONST = 6 -- was '5' in Cataclysm
	for i=1, select("#", ...), MOP_INDEX_CONST do
		local questname = select(i, ...)
		local isTrivial = select(i+2, ...)		
		local isDaily  = select(i+3, ...)		
		local triviaAndAllowedOrNotTrivia = (not isTrivial) or AutoTurnInCharacterDB.trivial	
		
		local quest = L.quests[questname] -- this quest exists in addons quest DB. There are mostly daily quests
		local notBlackListed = not (quest and quest.donotaccept)		

		-- Quest is appropriate if: (it is trivial and trivial are accepted) and (any quest accepted or (it is daily quest that is not in ignore list))
		if (triviaAndAllowedOrNotTrivia and notBlackListed and (AutoTurnInCharacterDB.all or isDaily )) then
			if quest and quest.amount then
				if self:GetItemAmount(quest.currency, quest.item) >= quest.amount then
					SelectGossipAvailableQuest(math.floor(i/MOP_INDEX_CONST)+1)
				end
			else
				SelectGossipAvailableQuest(math.floor(i/MOP_INDEX_CONST)+1)
			end
		end
	end
end

function AutoTurnIn:isDarkmoonAndAllowed(questCount)
	return (self.DarkmoonAllowToProceed and questCount) and 
			AutoTurnInCharacterDB.darkmoonautostart and 
			(GetZoneText() == L["Darkmoon Island"]) 
end

function AutoTurnIn:isYoungPandaren()
	return (UnitName("npc")== L["Scared Pandaren Cub"]) and
		(GetRealZoneText() == L["The Jade Forest"]) 
end

function AutoTurnIn:isDarkmoonFaireMysticMage()
	return AutoTurnInCharacterDB.todarkmoon and 
		(UnitName("npc")== L["Darkmoon Faire Mystic Mage"]) and
		(GetRealZoneText() ~= L["Darkmoon Island"])  
end

function AutoTurnIn:isDarkmoonFaireTeleportologist()
	return AutoTurnInCharacterDB.darkmoonteleport and (L["DarkmoonFaireTeleport"]==UnitName("target"))
end

function AutoTurnIn:GOSSIP_SHOW()
	if (not self:AllowedToHandle(true)) then
		return
	end
	
	-- darkmoon fairy gossip sometime turns in quest too fast so I can't relay only on quest number count. It often lie.
	-- this flag is set in VarArgForActiveQuests if any quest may be turned in
	self.DarkmoonAllowToProceed = true	
	local questCount = GetNumGossipActiveQuests() > 0
	
	self:VarArgForActiveQuests(GetGossipActiveQuests())
	self:VarArgForAvailableQuests(GetGossipAvailableQuests())

	if self:isDarkmoonAndAllowed(questCount) then
		local options = {GetGossipOptions()}
		for k, v in pairs(options) do
			if ((v ~= "gossip") and strfind(v, "|cFF0008E8%(")) then
				local opcount = GetNumGossipOptions()
				SelectGossipOption((opcount == 1) and 1 or  math.floor(k / GetNumGossipOptions()) + 1)
			end
		end
	end

	if self:isYoungPandaren() then
		SelectGossipOption(1)
	end
	
	if self:isDarkmoonFaireMysticMage() or self:isDarkmoonFaireTeleportologist() then 
		SelectGossipOption(1)
		StaticPopup1Button1:Click()
	end
end

function AutoTurnIn:QUEST_DETAIL()
	if (QuestIsDaily() or QuestIsWeekly()) then 
		self:CacheAsDaily(GetTitleText())
	end
	
	if self:AllowedToHandle() and self:AllOrDaily() then
		QuestInfoDescriptionText:SetAlphaGradient(0, -1)
		QuestInfoDescriptionText:SetAlpha(1)
		AcceptQuest()
	end
end

function AutoTurnIn:QUEST_ACCEPTED(event, index)
	if AutoTurnInCharacterDB.questshare and GetQuestLogPushable() and GetNumGroupMembers() >= 1 then
		SelectQuestLogEntry(index);
		QuestLogPushQuest();
	end
end

function AutoTurnIn:QUEST_PROGRESS()
    if  self:AllowedToHandle() and IsQuestCompletable() and self:AllOrDaily() then	
		CompleteQuest()
    end
end

-- return true if an item is of `ranged` type and is suitable with current options
function AutoTurnIn:IsRangedAndRequired(subclass)
	return (AutoTurnInCharacterDB.weapon['Ranged'] and
		(C.ITEMS['Crossbows'] == subclass or C.ITEMS['Guns'] == subclass or C.ITEMS['Bows'] == subclass))
end

-- return true if an item is of `Jewelry` type and is suitable with current options
function AutoTurnIn:IsJewelryAndRequired(equipSlot)
	return AutoTurnInCharacterDB.armor['Jewelry'] and (C.JEWELRY[equipSlot])
end

-- initiated in AutoTurnIn:TurnInQuest PLAYER_LEAVE_COMBAT ?
AutoTurnIn.delayFrame = CreateFrame('Frame')
AutoTurnIn.delayFrame:Hide()
AutoTurnIn.delayFrame:SetScript('OnUpdate', function()
	if not next(AutoTurnIn.autoEquipList) then
		AutoTurnIn.delayFrame:Hide()
		return
	end

	if (InCombatLockdown()) then 
		return
	end

	if (time() < AutoTurnIn.delayFrame.delay) then
		return
	end

	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag), 1 do
			local link = GetContainerItemLink (bag, slot)
			if ( link ) then
				local name = GetItemInfo(link)
				if ( name and AutoTurnIn.autoEquipList[name] ) then
					AutoTurnIn:Print(L["equipping reward"], link)
					EquipItemByName(name, AutoTurnIn.autoEquipList[name])
					AutoTurnIn.autoEquipList[name]=nil
				end
			end
		end
	end
end)

-- return 0 if itemlink is null, item level or math.huge if the item is heirloom
function AutoTurnIn:ItemLevel(itemLink)
	if (not itemLink) then
		return 0
	end
	-- 7 for heirloom http://wowprogramming.com/docs/api_types#itemQuality
	local invQuality, invLevel = select(3, GetItemInfo(itemLink))
	return (invQuality == 7) and math.huge or itemLink
end

-- turns quest in printing reward text if `showrewardtext` option is set.
-- prints appropriate message if item is taken by greed
-- equips received reward if such option selected
function AutoTurnIn:TurnInQuest(rewardIndex)
	if (AutoTurnInCharacterDB.showrewardtext) then
		self:Print((UnitName("target") and  UnitName("target") or '')..'\n', GetRewardText())
	end
	
	-- Greed or just a single reward
	if (self.forceGreed) or (GetNumQuestChoices() == 1) then
		if (GetNumQuestChoices() > 1) then
			self:Print(L["gogreedy"])
		end
	else
		local name = GetQuestItemInfo("choice", rewardIndex)
		if (AutoTurnInCharacterDB.autoequip and (strlen(name) > 0)) then
			local lootLevel, _, _, _, _, equipSlot = select(4, GetItemInfo(GetQuestItemLink("choice", rewardIndex)))

			-- Compares reward and already equiped item levels. If reward level is greater than equiped item, auto equip reward
			local slot = C.SLOTS[equipSlot]
			if (slot) then
				local firstSlot = GetInventorySlotInfo(slot[1])
				local invLink = GetInventoryItemLink("player", firstSlot)
				local eqLevel = self:ItemLevel(invLink)

				-- If reward is a ring  trinket or one-handed weapons all slots must be checked in order to swap one with a lesser item-level
				if (#slot > 1) then
					local secondSlot = GetInventorySlotInfo(slot[2]) 
					invLink = GetInventoryItemLink("player", secondSlot)
					if (invLink) then 
						local eq2Level = self:ItemLevel(invLink)
						firstSlot = (eqLevel > eq2Level) and secondSlot or firstSlot
						eqLevel = (eqLevel > eq2Level) and eq2Level or eqLevel
					end
				end
				
				-- comparing lowest equiped item level with reward's item level
				if(lootLevel > eqLevel) then
					self.autoEquipList[name] = firstSlot
					self.delayFrame.delay = time() + 2
					self.delayFrame:Show()
				end
			end
		end
	end

	if (AutoTurnInCharacterDB.debug) then
		local link = GetQuestItemLink("choice", rewardIndex)
		if (link) then
			self:Print("Debug: item to loot=", GetQuestItemLink("choice", rewardIndex))
		elseif (GetNumQuestChoices() == 0) then
			self:Print("Debug: turning quest in")
		end
	else		
		GetQuestReward(rewardIndex)
	end
end

function AutoTurnIn:Greed()
	local index, money = 0, 0;

	for i=1, GetNumQuestChoices() do
		local link = GetQuestItemLink("choice", i)
		if ( link == nil ) then
			return
		end
		local m = select(11, GetItemInfo(link))
		if m > money then
			money = m
			index = i
		end
	end

	if money > 0 then  -- some quests, like tournament ones, offer reputation rewards and they have no cost.
		self.forceGreed = true
		self:TurnInQuest(index)
	end
end

--[[
iterates all rewards and compares with chosen stats and types. If only one appropriate item found then it accepted and quest is turned in.
if more than one suitable item found then item list is shown in a chat window and addons return control to player.

@returns 'true' if one or more suitable reward is found, 'false' otherwise ]]--
-- tables are declared here to optimize memory model. Said that in current implementation it's cheaper to wipe than to create.
AutoTurnIn.found, AutoTurnIn.stattable = {}, {}
function AutoTurnIn:Need()
	wipe(self.found)

	for i=1, GetNumQuestChoices() do
		local link = GetQuestItemLink("choice", i)

		if ( link == nil ) then
			self:Print(L["rewardlag"])
			return true
		end

		local class, subclass, _, equipSlot = select(6, GetItemInfo(link))
		--[[trinkets are out of autoloot]]--
		if  ( 'INVTYPE_TRINKET' == equipSlot )then
			self:Print(L["stopitemfound"]:format(_G[equipSlot]))
			return true
		end
		local itemCandidate = {index=i, points=0, type="", stat="NOTCHOSEN", secondary={}}

		-- TYPE: item is suitable if there are no type specified at all or item type is chosen
		local OkByType = false
		if class == C.WEAPONLABEL then
			OkByType = (not next(AutoTurnInCharacterDB.weapon)) or (AutoTurnInCharacterDB.weapon[subclass] or
						self:IsRangedAndRequired(subclass))
		else
			OkByType = ( not next(AutoTurnInCharacterDB.armor) ) or ( AutoTurnInCharacterDB.armor[subclass] or
						AutoTurnInCharacterDB.armor[equipSlot] or self:IsJewelryAndRequired(equipSlot) )
		end
		itemCandidate.type=subclass .. ((not not OkByType) and "=>OK" or "=>FAIL")

		--STAT+SECONDARY: Same here: if no stat specified or item stat is chosen then item is wanted
		local OkByStat = not next(AutoTurnInCharacterDB.stat) 					-- true if table is empty
		local OkBySecondary = not next(AutoTurnInCharacterDB.secondary) -- true if table is empty
		if (not (OkByStat and OkBySecondaryStat)) then
			wipe(self.stattable)
			GetItemStats(link, self.stattable)
			for stat, value in pairs(self.stattable) do
				if ( AutoTurnInCharacterDB.stat[stat] ) then
					OkByStat = true
					itemCandidate.stat=_G[stat].."=>OK"
				end
				if ( AutoTurnInCharacterDB.secondary[stat] ) then
					OkBySecondary = true
					itemCandidate.points =  itemCandidate.points + 1
					tinsert(itemCandidate.secondary, _G[stat])
				end
			end
		end

		-- User may not choose any options hence any item became 'ok'. That situation is undoubtly incorrect.
		local SettingsExists = (class == C.WEAPONLABEL and next(AutoTurnInCharacterDB.weapon) or next(AutoTurnInCharacterDB.armor))
								or next(AutoTurnInCharacterDB.stat)
 		-- OK means that particular options section is empty or item meets requirements
		if (OkByType and OkByStat and OkBySecondary and SettingsExists) then
			tinsert(self.found, itemCandidate)
		end

		if (AutoTurnInCharacterDB.debug) then
			local secondaryDebug = ""
			for _, sec in pairs(itemCandidate.secondary) do
				secondaryDebug = sec..","..secondaryDebug
			end
			self:Print("Debug:", GetQuestItemLink("choice", itemCandidate.index), " type:", itemCandidate.type,
						" stat:", itemCandidate.stat, " secondary:[", secondaryDebug, "]=>", itemCandidate.points)
		end
	end

	-- HANDLE RESULT
	local foundCount = #self.found
	if foundCount > 1 then
		-- sorting found items by relevance (count of attributes that concidence)
		table.sort(self.found, function(a,b) return a.points > b.points end)

		if (self.found[1].points == self.found[2].points) then
			self:Print(L["multiplefound"])
			for _, reward in pairs(self.found) do
				self:Print(GetQuestItemLink("choice", reward.index))
			end
		else
			self:TurnInQuest(self.found[1].index)
		end
	elseif(foundCount == 1) then
		self:TurnInQuest(self.found[1].index)
	elseif  ( foundCount == 0 and GetNumQuestChoices() > 0 ) and ( not AutoTurnInCharacterDB.greedifnothingfound ) then
		self:Print(L["nosuitablefound"])
	end

	return ( foundCount ~= 0 )
end

-- I was forced to make decision on offhands, cloack and shileds separate from armor but I can't pick up my mind about the reason...
function AutoTurnIn:QUEST_COMPLETE()
	-- blasted Lands citadel wonderful NPC. They do not trigger any events except quest_complete.
	if not self:AllowedToHandle() then
		return
	end

	--/script faction = (GameTooltip:NumLines() > 2 and not UnitIsPlayer(select(2,GameTooltip:GetUnit()))) and 
    -- getglobal("GameTooltipTextLeft"..GameTooltip:NumLines()):GetText() DEFAULT_CHAT_FRAME:AddMessage(faction or "NIL")
    if self:AllOrDaily() then
		local questname = GetTitleText()
		local quest = L.quests[questname]

		if GetNumQuestChoices() > 1 then
			local link = GetQuestItemLink("choice", 1)
			local itemID = link:match("%b::"):gsub(":", "")

			if (itemID == "46114" or itemID == "45724") then -- Tournament quest found
				self:TurnInQuest(AutoTurnInCharacterDB.tournament)
				return
			end

			if AutoTurnInCharacterDB.lootreward > 1 then -- Auto Loot enabled!
				self.forceGreed = false

				if (AutoTurnInCharacterDB.lootreward == 3) then
					self.forceGreed = (not self:Need() ) and AutoTurnInCharacterDB.greedifnothingfound
				end
				if (AutoTurnInCharacterDB.lootreward == 2 or self.forceGreed) then
					self:Greed()
				end
			end
		else
			self:TurnInQuest(1) -- index greater than '0' enables autoequip check. 
		end
    end
end

-- gossip and quest interaction goes through a sequence of windows: gossip [shows a list of available quests] - quest[describes specified quest]
-- sometimes some parts of this chain is skipped. For example, priest in Honor Hold show quest window directly. This is a trick to handle 'toggle key'
hooksecurefunc(QuestFrame, "Hide", function() AutoTurnIn.allowed = nil end)