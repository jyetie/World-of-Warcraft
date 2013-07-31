-- SpamageMeters - an addon to suppress annoying Recount damage output stuff and 
-- instead condense it into clickable chat links
--
-- Written by Wrug and Cybey
--
-- Code inspiration from the WelcomeHome tutorial, Deadly Boss Mods and GreedBeacon

SpamageMeters = LibStub("AceAddon-3.0"):NewAddon("SpamageMeters", "AceConsole-3.0", "AceEvent-3.0", "AceHook-3.0", "AceTimer-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SpamageMeters")

local defaults = {
    profile =  {
	CHAT_MSG_CHANNEL = 2,
	CHAT_MSG_GUILD = 2,
	CHAT_MSG_OFFICER = 2,
	CHAT_MSG_PARTY = 2,
	CHAT_MSG_PARTY_LEADER = 2,
	CHAT_MSG_RAID = 2,
	CHAT_MSG_RAID_LEADER = 2,
	CHAT_MSG_INSTANCE_CHAT = 2,
	CHAT_MSG_INSTANCE_CHAT_LEADER = 2,
	CHAT_MSG_SAY = 2,
	CHAT_MSG_WHISPER = 2,
	CHAT_MSG_WHISPER_INFORM = 2, 
	CHAT_MSG_YELL = 2,
	debug = false,
	captureDelay = 1.0,
    },
}

local spamFirstLines = {
	"^Recount - (.*)$", --Recount
	"^Skada report on (.*) for (.*), (.*) to (.*):$", --Skada enUS
	"^Skada: Bericht für (.*) gegen (.*), (.*) bis (.*):$", --Skada deDE, might change in new Skada version
  "^Skada: (.*) für (.*), (.*) - (.*):$", --New Skada deDE version, hopefully fixes issue #15.
	"^Skada : (.*) pour (.*), de (.*) à (.*) :$", --Skada frFR
	"^(.*) - (.*)의 Skada 보고, (.*) ~ (.*):$", --Skada koKR
	--Skada ruRU missing, using enUS covered above
	"^Skada报告(.*)的(.*), (.*)到(.*):$", --Skada zhCN, might change in new Skada version
	"^(.*)的報告來自(.*)，從(.*)到(.*)：$", --Skada zhTW, might change in new Skada version
	"^Skada: (.*) for (.*), (.*) - (.*):$", --Better Skada support player details
	"^(.*) Done for (.*)$" -- TinyDPS
}

local spamNextLines = {
	"^(%d+). (.*)$", --Recount and Skada
	"^ (%d+). (.*)$", --Skada
	"^.*%%%)$", --Skada player details
	"^Numeration: (.*)$", -- Numeration
	"^[+-]%d+.%d", -- Numeration Deathlog Details
	"^(%d+). (.*):(.*)(%d+)(.*)(%d+)%%(.*)%((%d+)%)$" -- TinyDPS
}

local meters = {}

local events = {
		"CHAT_MSG_CHANNEL",
		"CHAT_MSG_GUILD",
		"CHAT_MSG_OFFICER",
		"CHAT_MSG_PARTY",
		"CHAT_MSG_PARTY_LEADER",
		"CHAT_MSG_INSTANCE_CHAT",
		"CHAT_MSG_INSTANCE_CHAT_LEADER",
		"CHAT_MSG_RAID",
		"CHAT_MSG_RAID_LEADER",
		"CHAT_MSG_SAY",
		"CHAT_MSG_WHISPER",
		"CHAT_MSG_WHISPER_INFORM",
		"CHAT_MSG_YELL",
}

local options = {
	name = "SpamageMeters",
	handler = SpamageMeters,
	type = "group",
	args = {
--		debug = {
--			type = "toggle",
--			name = L["Enable Debug"],
--			desc = L["Enable the debug function"],
--			set = function(info, value)
--				SpamageMeters.db.profile.debug = value
--			end,
--			get = function(info)
--				return SpamageMeters.db.profile.debug
--			end
--		},
		CHAT_MSG_GUILD = {
			type = "select",
			name = L["Filter Guild"],
			desc = L["Selects the action to perform when encountering damage meter data in guild chat"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_GUILD = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_GUILD
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_OFFICER = {
			type = "select",
			name = L["Filter Officer"],
			desc = L["Selects the action to perform when encountering damage meter data in officer chat"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_OFFICER = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_OFFICER
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_PARTY = {
			type = "select",
			name = L["Filter Party"],
			desc = L["Selects the action to perform when encountering damage meter data in party chat"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_PARTY = value
				SpamageMeters.db.profile.CHAT_MSG_PARTY_LEADER = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_PARTY
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_INSTANCE_CHAT = {
			type = "select",
			name = L["Filter Instance"],
			desc = L["Selects the action to perform when encountering damage meter data in instance chat"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_INSTANCE_CHAT = value
				SpamageMeters.db.profile.CHAT_MSG_INSTANCE_CHAT_LEADER = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_INSTANCE_CHAT
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_RAID = {
			type = "select",
			name = L["Filter Raid"],
			desc = L["Selects the action to perform when encountering damage meter data in raid chat"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_RAID = value
				SpamageMeters.db.profile.CHAT_MSG_RAID_LEADER = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_RAID
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_SAY = {
			type = "select",
			name = L["Filter Say"],
			desc = L["Selects the action to perform when encountering damage meter data in say chat"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_SAY = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_SAY
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_WHISPER = {
			type = "select",
			name = L["Filter Whisper"],
			desc = L["Selects the action to perform when encountering damage meter whisper"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_WHISPER = value
				SpamageMeters.db.profile.CHAT_MSG_WHISPER_INFORM = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_WHISPER
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_YELL= {
			type = "select",
			name = L["Filter Yell"],
			desc = L["Selects the action to perform when encountering damage meter data in yell chat"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_YELL = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_YELL
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		CHAT_MSG_CHANNEL = {
			type = "select",
			name = L["Filter Custom Channels"],
			desc = L["Selects the action to perform when encountering damage meter data in custom channels"],
			set = function(info, value)
				SpamageMeters.db.profile.CHAT_MSG_CHANNEL = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.CHAT_MSG_CHANNEL
			end,
			values = {	
						[1] = L["Do Nothing"],
						[2] = L["Compress"],
						[3] = L["Suppress"]
					}
		},
		captureDelay = {
			type = "range",
			name = L["Capture Delay"],
			desc = L["How many seconds the addon waits after 'Recount - *' lines before it assumes spam burst is over. 1 seems to work in most cases"],
			set = function(info, value)
				SpamageMeters.db.profile.captureDelay = value
			end,
			get = function(info)
				return SpamageMeters.db.profile.captureDelay
			end,
			min = 1,
			max = 5,
			step = 0.1
		},
	},
}

function SpamageMeters:OnInitialize()
	-- Called when the addon is loaded
	self.db = LibStub("AceDB-3.0"):New("SpamageMetersDB", defaults, "Default")

	LibStub("AceConfig-3.0"):RegisterOptionsTable("SpamageMeters", options)
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("SpamageMeters", "SpamageMeters")
	self:RegisterChatCommand("spm", "ChatCommand")
	self:RegisterChatCommand("spamagemeters", "ChatCommand")
end

function SpamageMeters:OnEnable()
	-- Called when the addon is enabled
	for _,event in ipairs(events) do
		ChatFrame_AddMessageEventFilter(event, self.ParseChatEvent)
	end
	
	self:RawHook("SetItemRef","ParseLink",true)
end

function SpamageMeters:OnDisable()
	-- Called when the addon is disabled
		for _,event in ipairs(events) do
			ChatFrame_RemoveMessageEventFilter(event, self.ParseChatEvent)
		end
end

function SpamageMeters:Debug(...)
	-- Print the message to screen if debug is turned on
	if SpamageMeters.db.profile.debug then
		self:Print(...)
	end
end

function SpamageMeters:ChatCommand(input)
	-- Open dialog if no parameters, else do something with the parameters
	if not input or input:trim() == "" then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	else
		LibStub("AceConfigCmd-3.0").HandleCommand(SpamageMeters, "spm", "SpamageMeters", input)
	end
end

function SpamageMeters:ParseLink(link, text, button, chatframe)
	local linktype, id = strsplit(":", link)
	if linktype == "SPM" then
		local meterID = tonumber(id)
		-- put stuff in the ItemRefTooltip from FrameXML
		ShowUIPanel(ItemRefTooltip);
		if ( not ItemRefTooltip:IsShown() ) then
			ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE");
		end
		ItemRefTooltip:ClearLines()
		ItemRefTooltip:AddLine(meters[meterID].title)
		ItemRefTooltip:AddLine(string.format(L["Reported by %s"],meters[meterID].src))
		for k,v in ipairs(meters[meterID].data) do
			-- Apparently both Skada and Recount split <position + name> and <number + percentage> by two or more spaces
			-- This allows us to split the string, and align the data part to the right
			local left, right = v:match("^(.*)  (.*)$")
			
			-- Check wheter the pattern matching worked, and if it didn't, just display a single line.
			if left and right then
				ItemRefTooltip:AddDoubleLine(left,right,1,1,1,1,1,1)
			else
				ItemRefTooltip:AddLine(v,1,1,1)
			end
		end
		ItemRefTooltip:Show()
	else
		return SpamageMeters.hooks["SetItemRef"](link, text, button, chatframe)
	end
end

function SpamageMeters:filterLine(event, source, msg, ...)
	local isSpam = false
	for k,v in ipairs(spamNextLines) do
		if msg:match(v) then
			SpamageMeters:Debug(msg,"matched",v)
			local curTime = GetTime()
			for i,j in ipairs(meters) do
				local elapsed = curTime - j.time
				if j.src == source and j.evt == event and elapsed < SpamageMeters.db.profile.captureDelay then
					-- found the meter, now check wheter this line is already in there
					local toInsert = true
					for a,b in ipairs(j.data) do
						if (b == msg) then
							toInsert = false
						end
					end
					
					if toInsert then
						table.insert(j.data,msg)
					end
					return true, false, nil
				end
			end
		end
	end
	
	for k,v in ipairs(spamFirstLines) do
		--if string.find(string.lower(msg), string.lower(v)) ~= nil then
		local newID = 0
		if msg:match(v) then
			local curTime = GetTime();
		
			-- check wheter there's already a meter running (don't want duplicates)
			for i,j in ipairs(meters) do
				local elapsed = curTime - j.time
				if j.src == source and j.evt == event and elapsed < SpamageMeters.db.profile.captureDelay then
					newID = i
					return true, true, string.format("SpamageMeters: |HSPM:%1$d|h|cFFFFFF00[%2$s]|r|h",newID or 0,msg or "nil")
				end
			end
		
			local newMeter = {src = source, evt = event, time = curTime, data = {}, title = msg}
			table.insert(meters, newMeter)
			
			for i,j in ipairs(meters) do
				if j.src == source and j.evt == event and j.time == curTime then
					newID = i
				end
			end

			return true, true, string.format("SpamageMeters: |HSPM:%1$d|h|cFFFFFF00[%2$s]|r|h",newID or 0,msg or "nil")
		end
	end
	return false, false, nil
end

function SpamageMeters:ParseChatEvent(event, msg, sender, ...)
	local hide = false
	
	for _,allevents in ipairs(events) do
		if event == allevents and SpamageMeters.db.profile[event] > 1 then
			isRecount, isFirstLine, newMessage = SpamageMeters:filterLine(event, sender, msg)
			if isRecount then
				if isFirstLine and SpamageMeters.db.profile[event] == 2 then
					local debugmsg = gsub(newMessage, "\124", "\124\124");
					SpamageMeters:Debug(msg,"changed to",debugmsg)
					msg = newMessage
				else
					-- it's not a first line or it's set to suppress anyway, hide the stuff
					SpamageMeters:Debug(msg,"suppressed")
					hide = true
				end
			end
		end
	end
	
	
	if not hide then
		return false, msg, sender, ...
	end
	return true
end
