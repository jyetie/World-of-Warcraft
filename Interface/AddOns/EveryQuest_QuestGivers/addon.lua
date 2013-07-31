---------------------------------------------------------
-- Addon declaration
local EveryQuest = LibStub("AceAddon-3.0"):GetAddon("EveryQuest")
local L = LibStub("AceLocale-3.0"):GetLocale("EveryQuest")
local BZ = LibStub("LibBabble-Zone-3.0"):GetUnstrictLookupTable()
local MODNAME = "QuestGivers"
local QG = EveryQuest:NewModule(MODNAME, "AceEvent-3.0")
local db, dbpc
local options
local QDatabase
local Lclasses = {}
FillLocalizedClassList(Lclasses)
local function getfaction(side)
	if UnitFactionGroup("player") == side then return true else return false end
end
local new, del, deepDel = EveryQuest.new, EveryQuest.del, EveryQuest.deepDel
local emptyTbl = {}
---------------------------------------------------------
-- Options table
local prof_options = {
	always          = L["Always show"],
	active          = L["Only while tracking"],
	never           = L["Never show"],
}
local function getOptions()
	if not options then
		options = {
			type = "group",
			name = L["Quest Givers"],
			desc = L["Quest Givers"],
			get = function(info) return db[ info[#info] ] end,
			set = function(info, value) db[ info[#info] ] = value QG:SendMessage("QuestGiversConfigChanged") end,
			args = {
				filters = {
					order = 1,
					type = "group",
					name = L["Filters"],
					guiInline = true,
					get = function(info) return db.filters[ info[#info] ] end,
					set = function(info, value) db.filters[ info[#info] ] = value QG:SendMessage("QuestGiversDisplayChanged") end,
					args = {
						overrideStatus = {
							order = 1,
							name = L["Override Main Status Filter"],
							desc = L["Ignore the main status filter and don't show completed quests."],
							type = "toggle",
						},
						levelRequirement = {
							order = 5,
							name = L["Meet level requirement"],
							desc = L["Only show quests that you meet the level requirement for"],
							type = "toggle",
						},
					},
				},
				
				World_Map = {
					type = "group",
					order = 10,
					guiInline = true,
					name = WORLDMAP_BUTTON,
					args = {
						icon_scale = {
							type = "range",
							name = L["Icon Scale"],
							desc = L["The scale of the icons"],
							min = 0.25, max = 2, step = 0.01,
							order = 30,
						},
						icon_alpha = {
							type = "range",
							name = L["Icon Alpha"],
							desc = L["The alpha transparency of the icons"],
							min = 0, max = 1, step = 0.01,
							order = 40,
						},
						showWorldMap = {
							order = 5,
							name = L["Show World Map Icons"],
							desc = L["Toggle showing World Map icons."],
							type = "select",
							values = prof_options,
						},
					},
				},
				Minimap = {
					type = "group",
					order = 10,
					guiInline = true,
					name = MINIMAP_LABEL,
					args = {
						mmicon_scale = {
							type = "range",
							name = L["Icon Scale"],
							desc = L["The scale of the icons"],
							min = 0.25, max = 2, step = 0.01,
							order = 30,
						},
						mmicon_alpha = {
							type = "range",
							name = L["Icon Alpha"],
							desc = L["The alpha transparency of the icons"],
							min = 0, max = 1, step = 0.01,
							order = 40,
						},
						showMinimap = {
							order = 5,
							name = L["Show Minimap Icons"],
							desc = L["Toggle showing Minimap icons."],
							type = "select",
							values = prof_options,
						},
						minimapTooltips = {
							order = 3,
							name = L["Minimap Icon Tooltips"],
							desc = L["Toggle showing Minimap icon tooltips."],
							type = "toggle",
							disabled = function() return not db.showMinimap end,
						},
						nodeRange = {
							order = 4,
							type = "toggle",
							name = L["Show Nodes on Minimap Border"],
							desc = L["Shows more Nodes that are currently out of range on the minimap's border."],
						},
						trackColor = {
							order = 1,
							name = L["Tracking Circle Color"],
							desc = L["Color of the tracking circle."],
							type = "color",
							get = function(info) return unpack(db[ info[#info] ]) end,
							set = function(info, r, g, b, a) db[ info[#info] ] = {r, g, b, a} QG:SendMessage("QuestGiversConfigChanged") end,
							hasAlpha = true,
						},
						trackDistance = {
							order = 15,
							name = L["Tracking Distance"],
							desc = L["The distance in yards to a node before it turns into a tracking circle"],
							type = "range",
							min = 50, max = 240, step = 5,

						},
						trackShow = {
							order = 20,
							name = L["Show Tracking Circle"],
							desc = L["Toggle showing the tracking circle."],
							type = "select",
							values = prof_options,
						},
					},
				},
				Category = {
					type = "group",
					order = 30,
					guiInline = true,
					name = L["Toggle Showing of Categories"],
					get = function(info) return db.filters.categories[ info[#info] ] end,
					set = function(info, value) db.filters.categories[ info[#info] ] = value QG:SendMessage("QuestGiversDisplayChanged") end,
					args = {
					
					}
				},
			},
		}
	end
	local order = 0
	local menu = EveryQuestZoneList
	local thearg = options.args.Category.args
	for _,li in pairs(menu) do
		if li == "Reputation" then
			break
		end
		if type(li) == "table" then
			thearg[li[1].."Toggle"] = {
				type = 'toggle',
				order = order,
				width = "double",
				name = format( L["Enable: %s"], BZ[li[1]] ~= nil and BZ[li[1]] or L[li[1]] ),
				desc = format(L["Hide %s quests except for categories checked below."], BZ[li[1]] ~= nil and BZ[li[1]] or L[li[1]] ),
			}
			order = order +1
			thearg[li[1]] = {
				type = "group",
				order = order,
				guiInline = true,
				disabled = function() return not db.filters.categories[li[1].."Toggle"] end,
				name = BZ[li[1]] ~= nil and BZ[li[1]] or L[li[1]],
				args = {
				
				},
			}
			order = order +1
			for _,cat in pairs(li[2]) do
				order = order +1
				local text
				if li[1] == "Classes" then
					text = Lclasses[cat[2]]
				else
					text = BZ[cat[2]] ~= nil and BZ[cat[2]] or L[cat[2]]
				end
				thearg[li[1]].args[tostring(cat[1])] = {
					type = 'toggle',
					order = order,
					name = text,
					desc = format(L["Show %s quests"], text ),
				}
			end
		end
	end
	-- Spew("thearg", thearg)

	return options
end

---------------------------------------------------------
-- Our db upvalue and db defaults
local defaults = {
	profile = {
		icon_scale       = 1,
		icon_alpha       = 1,
		mmicon_scale       = 1,
		mmicon_alpha       = 1,
		show = "active",
		
		showMinimap = "active",
		showWorldMap = "active",
		minimapTooltips = true,
		
		trackColor = {1, 1, 0, 1},
		trackDistance = 100,
		trackShow = "always",
		nodeRange = true,
		
		filters = {
			overrideStatus = false,
			levelRequirement = true,
			categories = {
				["*"] = true,
			},
		},
		debug = false,
	},
}

local floor = floor
local ceil = ceil
local next = next
local format = string.format
local viewCache = new() -- QG.viewCache
QG.viewCache = viewCache
local textureCache = new() -- QG.textureCache
-- local questCache = new()
-- QG.questCache = questCache

---------------------------------------------------------
-- Addon initialization, enabling and disabling

function QG:OnInitialize()
	-- Set up our database
	self.db = EveryQuest.dbpc:RegisterNamespace("QuestGivers", defaults)
	dbpc = EveryQuest.dbpc.profile
	db = self.db.profile
	QDatabase = EverQuestQuestGiversData
	
	EveryQuest:RegisterModuleOptions(L["Quest Givers"], getOptions)
	self.mapData = LibStub("LibMapData-1.0")
	self:RegisterMessage("EveryQuestDataChanged", "DisplayChanged")
	self:RegisterMessage("QuestGiversDisplayChanged", "DisplayChanged")
	self:RegisterEvent("PLAYER_LEVEL_UP")
	QG.level = UnitLevel("player")
	
	local icon_path = "Interface\\AddOns\\EveryQuest_QuestGivers\\"
	QG.trackingCircle = icon_path.."track_circle.tga"
	QG.nodeTextures = {
		['normal'] = icon_path.."quest.tga",
		['daily'] = icon_path.."daily.tga",
		['off'] = icon_path.."quest_off.tga",
		['skull'] = icon_path.."skull.tga",
	}
	QG.map_phasing = {
		[683] = 606,
		[748] = 720,
		[770] = 700
	}
	QG.minimap_shapes = {
		-- { upper-left, lower-left, upper-right, lower-right }
		["SQUARE"]                = { false, false, false, false },
		["CORNER-TOPLEFT"]        = { true,  false, false, false },
		["CORNER-TOPRIGHT"]       = { false, false, true,  false },
		["CORNER-BOTTOMLEFT"]     = { false, true,  false, false },
		["CORNER-BOTTOMRIGHT"]    = { false, false, false, true },
		["SIDE-LEFT"]             = { true,  true,  false, false },
		["SIDE-RIGHT"]            = { false, false, true,  true },
		["SIDE-TOP"]              = { true,  false, true,  false },
		["SIDE-BOTTOM"]           = { false, true,  false, true },
		["TRICORNER-TOPLEFT"]     = { true,  true,  true,  false },
		["TRICORNER-TOPRIGHT"]    = { true,  false, true,  true },
		["TRICORNER-BOTTOMLEFT"]  = { true,  true,  false, true },
		["TRICORNER-BOTTOMRIGHT"] = { false, true,  true,  true },
	}
	QG.minimap_size = {
		indoor = {
			[0] = 300, -- scale
			[1] = 240, -- 1.25
			[2] = 180, -- 5/3
			[3] = 120, -- 2.5
			[4] = 80,  -- 3.75
			[5] = 50,  -- 6
		},
		outdoor = {
			[0] = 466 + 2/3, -- scale
			[1] = 400,       -- 7/6
			[2] = 333 + 1/3, -- 1.4
			[3] = 266 + 2/6, -- 1.75
			[4] = 200,       -- 7/3
			[5] = 133 + 1/3, -- 3.5
		},
	}
end

local texture, repeatable, module, status, questPass
local hasquests = false
local quest
function QG:Filter(coord, data, ignoreFilter)
	--[[
		data[1] = nodeType
		data[2] = npcName
		data[3] = quests
	--]]
	
	texture = nil
	repeatable = nil
	status = nil
	questPass = nil
	hasquests = nil
	for uid,zone in pairs(data[3]) do
		if not ignoreFilter then
			-- EveryQuest:Debug(format("%d, %d", tonumber(uid), tonumber(zone)))
			if viewCache[tonumber(uid)] == nil then
				questPass = false
				quest = EveryQuest:GetQuestData(uid, nil, nil, zone)
				module = EveryQuest:GetModuleFromListID(zone)
				if quest ~= nil then
					repeatable = quest.d or quest.w or quest.rr
					questPass = EveryQuest:Filterer(uid, quest, db.filters.overrideStatus)
					questPass = questPass and (not db.filters.categories[module .. "Toggle"] or (db.filters.categories[module .. "Toggle"] and db.filters.categories[tostring(zone)]))
					status = EveryQuest:GetHistoryStatus(uid)
					if db.filters.levelRequirement then
						local l = quest.r ~= nil and quest.r or (quest.l ~= nil and (quest.l - 4) or nil)
						if l ~= nil and l < 1 then
							l = 1
						end
						if l ~= nil then
							questPass = questPass and (l <= QG.level)
						end
					end
					if db.filters.overrideStatus then
						questPass = questPass and (dbpc.ignored[uid] == nil and (status < 0 or repeatable))
					end
				end
				
				viewCache[tonumber(uid)] = questPass or false
				if questPass then
					if data[1] == 3 then
						texture = "skull"
					elseif repeatable then
						texture = "daily"
					end
				end
				-- EveryQuest:Debug(format("updating viewcache %s, passed: %s, texture: %s", uid, tostring(questPass), tostring(texture)))
			else
				questPass = viewCache[tonumber(uid)]
			end
		end

		if questPass or ignoreFilter then
			hasquests = true
		end
	end
	
	if hasquests then
		if texture then QG:SetTexture(coord, texture) end
		return true
	else
		return false
	end
end

function QG:PLAYER_LEVEL_UP(level)
	QG.level = tonumber(level)
	if db.filters.levelRequirement then
		self:SendMessage("QuestGiversDisplayChanged")
	end
end

function QG:DisplayChanged()
	EveryQuest:Debug("QG:DisplayChanged")
	-- db = EveryQuest.db.profile
	for k in pairs(viewCache) do
		viewCache[k] = nil
	end
	for k in pairs(textureCache) do
		textureCache[k] = nil
	end
	-- deepDel(questCache)
	-- questCache = new()
end

function QG:GetTexture(coord)
	return QG.nodeTextures[textureCache[coord]]
end

function QG:SetTexture(coord, texture)
	-- EveryQuest:Debug(format("setting textureCache %s, %s", coord, texture))
	textureCache[coord] = texture
end

function QG:GetQuestDisplayText(uid, zone)
	local quest = EveryQuest:GetQuestData(uid, nil, nil, zone)
	return EveryQuest:BuildButtonText(uid, quest)
end

-- Do-end block for iterator
do
	local emptyTbl = {}
	local tablestack = setmetatable({}, {__mode = 'k'})
	local bool, nodeType, npcName, questTable

	local function dbCoordIterNearby(t, prestate)
		if not t then return nil end
		local data = t.data
		local state, value = next(data, prestate)
		local xLocal, yLocal, yw, yh = t.xLocal, t.yLocal, t.yw, t.yh
		local mLevel = t.mLevel
		local radiusSquared, ignoreFilter = t.radiusSquared, t.ignoreFilter
		while state do
			-- inline the :getXY() here in critical minimap update loop
			local x2, y2, level2 = floor(state/1000000)/10000, floor(state % 1000000 / 100)/10000, state % 100
			local x = (x2 - xLocal) * yw
			local y = (y2 - yLocal) * yh
			if x*x + y*y <= radiusSquared and level2 == mLevel then
				if QG:Filter(state, value, ignoreFilter) then
					return state, value
				end
			end
			state, value = next(data, state)
		end
		tablestack[t] = true
		return nil, nil
	end

	--[[
		Find all nearby nodes within the radius of the given (x,y) for a nodeType and zone
		this function returns an iterator
	]]
	function QG:FindNearbyNode(zone, x, y, level, radius, ignoreFilter)
		local tbl = next(tablestack) or {}
		tablestack[tbl] = nil
		tbl.data = QDatabase[zone] or emptyTbl
		tbl.yw, tbl.yh =  self.mapData:MapArea(zone,level)
		tbl.radiusSquared = radius * radius
		tbl.xLocal, tbl.yLocal = x, y
		tbl.mLevel = level
		
		tbl.ignoreFilter = ignoreFilter
		return dbCoordIterNearby, tbl, nil
	end

	local function dbCoordIter(t, prestate)
		if not t then return nil end
		local data = t.data
		local state, value = next(data, prestate)
		
		while state do
			if QG:Filter(state, value, t.ignoreFilter) then
				return state, value
			end
			state, value = next(data, state)
		end
		tablestack[t] = true
		return nil, nil
	end

	--[[
		This function returns an iterator for the given zone and nodeType
	]]
	function QG:GetNodesForZone(zone, ignoreFilter)
		local t = QDatabase[zone] or emptyTbl
		if ignoreFilter then
			return pairs(t)
		else
			local tbl = next(tablestack) or {}
			tablestack[tbl] = nil
			tbl.data = t
			tbl.ignoreFilter = ignoreFilter
			return dbCoordIter, tbl, nil
		end
	end
end