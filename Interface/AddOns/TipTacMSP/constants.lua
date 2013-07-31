-- ACE Einbinden
local L = LibStub("AceLocale-3.0"):GetLocale("TipTacMSP", true)
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local LibSharedMedia = LibStub and LibStub("LibSharedMedia-3.0", 1);

TipTacMSP = {};

-- DropDown Lists
local DROPDOWN_FONTFLAGS = {
	[""] = "|cffffa0a0None",
	["OUTLINE"] = "Outline",
	["THICKOUTLINE"] = "Thick Outline",
};

local DROPDOWN_ANCHORTYPE = {
	["normal"] = "Normal Anchor",
	["mouse"] = "Mouse Anchor",
	["parent"] = "Parent Anchor",
};

local DROPDOWN_ANCHORPOS = {
	["TOP"] = "Top",
	["TOPLEFT"] = "Top Left",
	["TOPRIGHT"] = "Top Right",
	["BOTTOM"] = "Bottom",
	["BOTTOMLEFT"] = "Bottom Left",
	["BOTTOMRIGHT"] = "Bottom Right",
	["LEFT"] = "Left",
	["RIGHT"] = "Right",
	["CENTER"] = "Center",
};

local DROPDOWN_BARTEXTFORMAT = {
	["none"] = "|cffffa0a0None",
	["percent"] = "Percentage",
	["current"] = "Current Only",
	["value"] = "Values",
	["full"] = "Values & Percent",
	["deficit"] = "Deficit",
};

local function getSharedMediaDropDown(query)
	return LibSharedMedia:HashTable(query);
end

local function HexToRGBA(hex)
	local ralpha, rhex, ghex, bhex = strsub(hex, 1, 2), strsub(hex, 3, 4), strsub(hex, 5, 6), strsub(hex, 7, 8);
	return tonumber(rhex, 16)/255, tonumber(ghex, 16)/255, tonumber(bhex, 16)/255, tonumber(ralpha, 16)/255;
end

local function RGBToHex(r, g, b, a)
	r = r <= 255 and r >= 0 and r or 0
	g = g <= 255 and g >= 0 and g or 0
	b = b <= 255 and b >= 0 and b or 0
	a = a <= 255 and a >= 0 and a or 0
	return string.format("%02x%02x%02x%02x", a * 255, r * 255, g * 255, b * 255)
end

local function PercentToColor(color)
	return color[1], color[2], color[3], color[4];
end

local function ColorToPercent(r, b, g, a)
	color = {};
	color[1] = r;
	color[2] = g;
	color[3] = b;
	color[4] = a;
	return color;
end

local function seperateColor(color, default)
	if color == nil then
		color = default;
	end;
	return HexToRGBA(strsub(color, 3, 10));
end;

local function combineColor(r, b, g, a)
	return "|c"..RGBToHex(r, b, g, a);
end;

local function revertHash(theHash)
	newHash = {}
	for k, v in pairs(theHash) do
		newHash[v] = k;
	end
	return newHash;
end;

local DROPDOWN_FONT = getSharedMediaDropDown("font");
local DROPDOWN_FONT_REVERT = revertHash(DROPDOWN_FONT);

local DROPDOWN_BACKGROUND = getSharedMediaDropDown("background");
local DROPDOWN_BACKGROUND_REVERT = revertHash(DROPDOWN_BACKGROUND);

local DROPDOWN_BORDER = getSharedMediaDropDown("border");
local DROPDOWN_BORDER_REVERT = revertHash(DROPDOWN_BORDER);

local DROPDOWN_STATUSBAR = getSharedMediaDropDown("statusbar");
local DROPDOWN_STATUSBAR_REVERT = revertHash(DROPDOWN_STATUSBAR);

-- Optionen für das Blizzard-Optionenmenü
TipTacMSP.options = {
	type = "group",
	args = {
		core = {
			type = "group",
			name = L["General"],
			order = 1,
			args = {
				header = {
					type = "header",
					name = "TipTac",
					order = 0,
				}
			}
		},
		MSP = {
			type = "group",
			name = L["MSP"],
			order = 25,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["MSP"],
					order = 0,
				},
				showMSPName = { 
					type = "toggle", 
					order = 1,
					name = L["Show MSP Name"], 
					desc = L["Shows the MSP Name in the Game Tooltip."],
					get = function() return TipTac_Config.showMSPName end,
					set = function(info, v)	TipTac_Config.showMSPName = v end,
					disabled = function() return false end,
					width = "full"
				},
				showMSPState = { 
					type = "toggle", 
					order = 2,
					name = L["Show MSP Status"], 
					desc = L["Shows the MSP Status in the Game Tooltip."],
					get = function() return TipTac_Config.showMSPState end,
					set = function(info, v)	TipTac_Config.showMSPState = v end,
					disabled = function() return false end,
					width = "full"
				},
				showMSPStyle = { 
					type = "toggle", 
					order = 3,
					name = L["Show MSP RP Style"], 
					desc = L["Shows the MSP Roleplay Style in the Game Tooltip."],
					get = function() return TipTac_Config.showMSPStyle end,
					set = function(info, v)	TipTac_Config.showMSPStyle = v end,
					disabled = function() return false end,
					width = "full"
				},
				showMSPClient = { 
					type = "toggle", 
					order = 4,
					name = L["Show MSP Client"], 
					desc = L["Shows the MSP Client(s) in the Game Tooltip."],
					get = function() return TipTac_Config.showMSPClient end,
					set = function(info, v)	TipTac_Config.showMSPClient = v end,
					disabled = function() return false end,
					width = "full"
				},
				showMSPCurrent = {
					type = "toggle", 
					order = 5,
					name = L["Show MSP Currently"], 
					desc = L["Shows the text in the Field for current."],
					get = function() return TipTac_Config.showMSPCurrent end,
					set = function(info, v)	TipTac_Config.showMSPCurrent = v end,
					disabled = function() return false end,
					width = "full"
				},
				showMSPDescExists = {
					type = "toggle", 
					order = 6,
					name = L["Show MSP Physical Description exists"], 
					desc = L["Shows the Information of a detailed Physical Description exists."],
					get = function() return TipTac_Config.showMSPDescExists end,
					set = function(info, v)	TipTac_Config.showMSPDescExists = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		General = {
			type = "group",
			name = L["General"],
			order = 10,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["General"],
					order = 0,
				},
				showUnitTip = {
					type = "toggle",
					order = 10,
					name = L["Enable TipTac Unit Tip Appearance"],
					desc = L["Enable TipTac Unit Tip Appearance"],
					get = function() return TipTac_Config.showUnitTip end,
					set = function(info, v)	TipTac_Config.showUnitTip = v end,
					disabled = function() return false end,
					width = "full"
				},
				showStatus = {
					type = "toggle",
					order = 20,
					name = L["Show DC, AFK and DND Status"],
					desc = L["Show DC, AFK and DND Status"],
					get = function() return TipTac_Config.showStatus end,
					set = function(info, v)	TipTac_Config.showStatus = v end,
					disabled = function() return false end,
					width = "full"
				},
				showGuildRank = {
					type = "toggle",
					order = 30,
					name = L["Show Player Guild Rank Title"],
					desc = L["Show Player Guild Rank Title"],
					get = function() return TipTac_Config.showGuildRank end,
					set = function(info, v)	TipTac_Config.showGuildRank = v end,
					disabled = function() return false end,
					width = "full"
				},
				showTargetedBy = {
					type = "toggle",
					order = 40,
					name = L["Show Who Targets the Unit"],
					desc = L["Show Who Targets the Unit"],
					get = function() return TipTac_Config.showTargetedBy end,
					set = function(info, v)	TipTac_Config.showTargetedBy = v end,
					disabled = function() return false end,
					width = "full"
				},
				showPlayerGender = {
					type = "toggle",
					order = 50,
					name = L["Show Player Gender"],
					desc = L["Show Player Gender"],
					get = function() return TipTac_Config.showPlayerGender end,
					set = function(info, v)	TipTac_Config.showPlayerGender = v end,
					disabled = function() return false end,
					width = "full"
				},
				nameType = {
					type = "select",
					style = "dropdown",
					values = { ["normal"] = "Name only", ["title"] = "Use player titles", ["original"] = "Copy from original tip" },
					order = 60,
					name = L["Name Type"],
					desc = L["Name Type"],
					get = function() return TipTac_Config.nameType end,
					set = function(info, v)	TipTac_Config.nameType = v end,
					disabled = function() return false end,
					width = "full"
				},
				showRealm = {
					type = "select",
					style = "dropdown",
					values = { ["none"] = "Do not show realm", ["show"] = "Show realm", ["asterisk"] = "Show (*) instead" },
					order = 70,
					name = L["Show Unit Realm"],
					desc = L["Show Unit Realm"],
					get = function() return TipTac_Config.showRealm end,
					set = function(info, v)	TipTac_Config.showRealm = v end,
					disabled = function() return false end,
					width = "full"
				},
				showTarget = {
					type = "select",
					style = "dropdown",
					values = { ["none"] = "Do not show target", ["first"] = "First line", ["second"] = "Second line", ["last"] = "Last line" },
					order = 80,
					name = L["Show Unit Target"],
					desc = L["Show Unit Target"],
					get = function() return TipTac_Config.showTarget end,
					set = function(info, v)	TipTac_Config.showTarget = v end,
					disabled = function() return false end,
					width = "full"
				},
				targetYouText = {
					type = "input",
					order = 90,
					name = L["Targeting You Text"],
					desc = L["Targeting You Text"],
					get = function() return TipTac_Config.targetYouText end,
					set = function(info, v)	TipTac_Config.targetYouText = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Special = {
			type = "group",
			name = L["Special"],
			order = 20,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Special"],
					order = 0,
				},
				gttScale = {
					type = "range",
					min = 0.2,
					max = 4,
					step = 0.05,
					order = 10,
					name = L["GameTooltip Scale"],
					desc = L["GameTooltip Scale"],
					get = function() return TipTac_Config.gttScale end,
					set = function(info, v)	TipTac_Config.gttScale = v end,
					disabled = function() return false end,
					width = "full"
				},
				updateFreq = {
					type = "range",
					min = 0,
					max = 5,
					step = 0.05,
					order = 20,
					name = L["Tip Update Frequency"],
					desc = L["Tip Update Frequency"],
					get = function() return TipTac_Config.updateFreq end,
					set = function(info, v)	TipTac_Config.updateFreq = v end,
					disabled = function() return false end,
					width = "full"
				},
				enableChatHoverTips = {
					type = "toggle",
					order = 30,
					name = L["Enable ChatFrame Hover Hyperlinks"],
					desc = L["Enable ChatFrame Hover Hyperlinks"],
					get = function() return TipTac_Config.enableChatHoverTips end,
					set = function(info, v)	TipTac_Config.enableChatHoverTips = v end,
					disabled = function() return false end,
					width = "full"
				},
				hideFactionText = {
					type = "toggle",
					order = 40,
					name = L["Hide Faction Text"],
					desc = L["Hide Faction Text"],
					get = function() return TipTac_Config.hideFactionText end,
					set = function(info, v)	TipTac_Config.hideFactionText = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Colors = {
			type = "group",
			name = L["Colors"],
			order = 30,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Colors"],
					order = 0,
				},
				colorGuildByReaction = {
					type = "toggle",
					order = 10,
					name = L["Color Guild by Reaction"],
					desc = L["Color Guild by Reaction"],
					get = function() return TipTac_Config.colorGuildByReaction end,
					set = function(info, v)	TipTac_Config.colorGuildByReaction = v end,
					disabled = function() return false end,
					width = "full"
				},
				colGuild = {
					type = "color",
					order = 20,
					name = L["Guild Color"],
					desc = L["Guild Color"],
					get = function()
							return seperateColor(TipTac_Config.colGuild); 
						end,
					set = function(info, r, g, b, a) 
							TipTac_Config.colGuild = combineColor(r, b, g, a); 
						end,
					disabled = function() return false end,
					width = "full"
				},
				colSameGuild = {
					type = "color",
					order = 30,
					name = L["Same Guild Color"],
					desc = L["Same Guild Color"],
					get = function() return seperateColor(TipTac_Config.colSameGuild) end,
					set = function(info, r, g, b, a) TipTac_Config.colSameGuild = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colRace = {
					type = "color",
					order = 40,
					name = L["Race & Creature Type Color"],
					desc = L["Race & Creature Type Color"],
					get = function() return seperateColor(TipTac_Config.colRace) end,
					set = function(info, r, g, b, a) TipTac_Config.colRace = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colLevel = {
					type = "color",
					order = 50,
					name = L["Neutral Level Color"],
					desc = L["Neutral Level Color"],
					get = function() return seperateColor(TipTac_Config.colLevel) end,
					set = function(info, r, g, b, a) TipTac_Config.colLevel = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colorNameByClass = {
					type = "toggle",
					order = 60,
					name = L["Color Player Names by Class Color"],
					desc = L["Color Player Names by Class Color"],
					get = function() return TipTac_Config.colorNameByClass end,
					set = function(info, v)	TipTac_Config.colorNameByClass = v end,
					disabled = function() return false end,
					width = "full"
				},
				classColoredBorder = {
					type = "toggle",
					order = 70,
					name = L["Color Tip Border by Class Color"],
					desc = L["Color Tip Border by Class Color"],
					get = function() return TipTac_Config.classColoredBorder end,
					set = function(info, v)	TipTac_Config.classColoredBorder = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Reactions = {
			type = "group",
			name = L["Reactions"],
			order = 40,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Reactions"],
					order = 0,
				},
				reactText = {
					type = "toggle",
					order = 10,
					name = L["Show the unit's reaction as text"],
					desc = L["Show the unit's reaction as text"],
					get = function() return TipTac_Config.reactText end,
					set = function(info, v)	TipTac_Config.reactText = v end,
					disabled = function() return false end,
					width = "full"
				},
				colReactText1 = {
					type = "color",
					order = 20,
					name = L["Tapped Color"],
					desc = L["Tapped Color"],
					get = function() return seperateColor(TipTac_Config.colReactText1, "|cffc0c0c0") end,
					set = function(info, r, g, b, a) TipTac_Config.colReactText1 = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactText2 = {
					type = "color",
					order = 30,
					name = L["Hostile Color"],
					desc = L["Hostile Color"],
					get = function() return seperateColor(TipTac_Config.colReactText2, "|cffff0000") end,
					set = function(info, r, g, b, a) TipTac_Config.colReactText2 = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactText3 = {
					type = "color",
					order = 40,
					name = L["Caution Color"],
					desc = L["Caution Color"],
					get = function() return seperateColor(TipTac_Config.colReactText3, "|cffff7f00") end,
					set = function(info, r, g, b, a) TipTac_Config.colReactText3 = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactText4 = {
					type = "color",
					order = 50,
					name = L["Neutral Color"],
					desc = L["Neutral Color"],
					get = function() return seperateColor(TipTac_Config.colReactText4, "|cffffff00") end,
					set = function(info, r, g, b, a) TipTac_Config.colReactText4 = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactText5 = {
					type = "color",
					order = 60,
					name = L["Friendly NPC or PvP Player Color"],
					desc = L["Friendly NPC or PvP Player Color"],
					get = function() return seperateColor(TipTac_Config.colReactText5, "|cff00ff00") end,
					set = function(info, r, g, b, a) TipTac_Config.colReactText5 = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactText6 = {
					type = "color",
					order = 70,
					name = L["Friendly Player Color"],
					desc = L["Friendly Player Color"],
					get = function() return seperateColor(TipTac_Config.colReactText6, "|cff25c1eb") end,
					set = function(info, r, g, b, a) TipTac_Config.colReactText6 = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactText7 = {
					type = "color",
					order = 80,
					name = L["Dead Color"],
					desc = L["Dead Color"],
					get = function() return seperateColor(TipTac_Config.colReactText7, "|cff808080") end,
					set = function(info, r, g, b, a) TipTac_Config.colReactText7 = combineColor(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		BGColor = {
			type = "group",
			name = L["BG Color"],
			order = 50,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["BG Color"],
					order = 0,
				},
				reactColoredBackdrop = {
					type = "toggle",
					order = 10,
					name = L["Color backdrop based on the unit's reaction"],
					desc = L["Color backdrop based on the unit's reaction"],
					get = function() return TipTac_Config.reactColoredBackdrop end,
					set = function(info, v)	TipTac_Config.reactColoredBackdrop = v end,
					disabled = function() return false end,
					width = "full"
				},
				reactColoredBorder = {
					type = "toggle",
					order = 20,
					name = L["Color border based on the unit's reaction"],
					desc = L["Color border based on the unit's reaction"],
					get = function() return TipTac_Config.reactColoredBorder end,
					set = function(info, v)	TipTac_Config.reactColoredBorder = v end,
					disabled = function() return false end,
					width = "full"
				},
				colReactBack1 = {
					type = "color",
					order = 30,
					name = L["Tapped Color"],
					desc = L["Tapped Color"],
					get = function() return PercentToColor(TipTac_Config.colReactBack1) end,
					set = function(info, r, g, b, a) TipTac_Config.colReactBack1 = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactBack2 = {
					type = "color",
					order = 40,
					name = L["Hostile Color"],
					desc = L["Hostile Color"],
					get = function() return PercentToColor(TipTac_Config.colReactBack2) end,
					set = function(info, r, g, b, a) TipTac_Config.colReactBack2 = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactBack3 = {
					type = "color",
					order = 50,
					name = L["Caution Color"],
					desc = L["Caution Color"],
					get = function() return PercentToColor(TipTac_Config.colReactBack3) end,
					set = function(info, r, g, b, a) TipTac_Config.colReactBack3 = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactBack4 = {
					type = "color",
					order = 60,
					name = L["Neutral Color"],
					desc = L["Neutral Color"],
					get = function() return PercentToColor(TipTac_Config.colReactBack4) end,
					set = function(info, r, g, b, a) TipTac_Config.colReactBack4 = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactBack5 = {
					type = "color",
					order = 70,
					name = L["Friendly NPC or PvP Player Color"],
					desc = L["Friendly NPC or PvP Player Color"],
					get = function() return PercentToColor(TipTac_Config.colReactBack5) end,
					set = function(info, r, g, b, a) TipTac_Config.colReactBack5 = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactBack6 = {
					type = "color",
					order = 80,
					name = L["Friendly Player Color"],
					desc = L["Friendly Player Color"],
					get = function() return PercentToColor(TipTac_Config.colReactBack6) end,
					set = function(info, r, g, b, a) TipTac_Config.colReactBack6 = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				colReactBack7 = {
					type = "color",
					order = 90,
					name = L["Dead Color"],
					desc = L["Dead Color"],
					get = function() return PercentToColor(TipTac_Config.colReactBack7) end,
					set = function(info, r, g, b, a) TipTac_Config.colReactBack7 = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Backdrop = {
			type = "group",
			name = L["Backdrop"],
			order = 60,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Backdrop"],
					order = 0,
				},
				tipBackdropBG = {
					type = "select",
					style = "dropdown",
					dialogControl = 'LSM30_Background',
					values = DROPDOWN_BACKGROUND,
					order = 10,
					name = L["Background Texture"],
					desc = L["Background Texture"],
					get = function() return DROPDOWN_BACKGROUND_REVERT[TipTac_Config.tipBackdropBG] end,
					set = function(info, v)	TipTac_Config.tipBackdropBG = DROPDOWN_BACKGROUND[v] end,
					disabled = function() return false end,
					width = "full"
				},
				tipBackdropEdge = {
					type = "select",
					style = "dropdown",
					dialogControl = 'LSM30_Border',
					values = DROPDOWN_BORDER,
					order = 20,
					name = L["Border Texture"],
					desc = L["Border Texture"],
					get = function() return DROPDOWN_BORDER_REVERT[TipTac_Config.tipBackdropEdge] end,
					set = function(info, v)	TipTac_Config.tipBackdropEdge = DROPDOWN_BORDER[v] end,
					disabled = function() return false end,
					width = "full"
				},
				backdropEdgeSize = {
					type = "range",
					min = 0,
					max = 64,
					step = 0.5,
					order = 30,
					name = L["Backdrop Edge Size"],
					desc = L["Backdrop Edge Size"],
					get = function() return TipTac_Config.backdropEdgeSize end,
					set = function(info, v)	TipTac_Config.backdropEdgeSize = v end,
					disabled = function() return false end,
					width = "full"
				},
				backdropInsets = {
					type = "range",
					min = -20,
					max = 20,
					step = 0.5,
					order = 40,
					name = L["Backdrop Insets"],
					desc = L["Backdrop Insets"],
					get = function() return TipTac_Config.backdropInsets end,
					set = function(info, v)	TipTac_Config.backdropInsets = v end,
					disabled = function() return false end,
					width = "full"
				},
				tipColor = {
					type = "color",
					order = 50,
					name = L["Tip Background Color"],
					desc = L["Tip Background Color"],
					get = function() return PercentToColor(TipTac_Config.tipColor) end,
					set = function(info, r, g, b, a) TipTac_Config.tipColor = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				tipBorderColor = {
					type = "color",
					order = 60,
					name = L["Tip Border Color"],
					desc = L["Tip Border Color"],
					get = function() return PercentToColor(TipTac_Config.tipBorderColor) end,
					set = function(info, r, g, b, a) TipTac_Config.tipBorderColor = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				gradientTip = {
					type = "toggle",
					order = 70,
					name = L["Show Gradient Tooltips"],
					desc = L["Show Gradient Tooltips"],
					get = function() return TipTac_Config.gradientTip end,
					set = function(info, v)	TipTac_Config.gradientTip = v end,
					disabled = function() return false end,
					width = "full"
				},
				gradientColor = {
					type = "color",
					order = 80,
					name = L["Gradient Color"],
					desc = L["Gradient Color"],
					get = function() return PercentToColor(TipTac_Config.gradientColor) end,
					set = function(info, r, g, b, a) TipTac_Config.gradientColor = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Font = {
			type = "group",
			name = L["Font"],
			order = 70,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Font"],
					order = 0,
				},					
				modifyFonts = {
					type = "toggle",
					order = 10,
					name = L["Modify the GameTooltip Font Templates"],
					desc = L["Modify the GameTooltip Font Templates"],
					get = function() return TipTac_Config.modifyFonts end,
					set = function(info, v)	TipTac_Config.modifyFonts = v end,
					disabled = function() return false end,
					width = "full"
				},
				fontFace = {
					type = "select",
					dialogControl = 'LSM30_Font',
					style = "dropdown",
					values = DROPDOWN_FONT,
					order = 20,
					name = L["Font Face"],
					desc = L["Font Face"],
					get = function() return DROPDOWN_FONT_REVERT[TipTac_Config.fontFace] end,
					set = function(info, v)	TipTac_Config.fontFace = DROPDOWN_FONT[v] end,
					disabled = function() return false end,
					width = "full"
				},
				fontFlags = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_FONTFLAGS,
					order = 30,
					name = L["Font Flags"],
					desc = L["Font Flags"],
					get = function() return TipTac_Config.fontFlags end,
					set = function(info, v)	TipTac_Config.fontFlags = v end,
					disabled = function() return false end,
					width = "full"
				},
				fontSize = {
					type = "range",
					min = 6,
					max = 29,
					step = 1,
					order = 40,
					name = L["Font Size"],
					desc = L["Font Size"],
					get = function() return TipTac_Config.fontSize end,
					set = function(info, v)	TipTac_Config.fontSize = v end,
					disabled = function() return false end,
					width = "full"
				},
				fontSizeDelta = {
					type = "range",
					min = 0,
					max = 10,
					step = 1,
					order = 50,
					name = L["Font Size Delta"],
					desc = L["Font Size Delta"],
					get = function() return TipTac_Config.fontSizeDelta end,
					set = function(info, v)	TipTac_Config.fontSizeDelta = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Classify = {
			type = "group",
			name = L["Classify"],
			order = 80,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Classify"],
					order = 0,
				},
				classification_minus = {
					type = "input",
					order = 10,
					name = L["Minus"],
					desc = L["Minus"],
					get = function() return TipTac_Config.classification_minus end,
					set = function(info, v)	TipTac_Config.classification_minus = v end,
					disabled = function() return false end,
					width = "full"
				},
				classification_trivial = {
					type = "input",
					order = 20,
					name = L["Trivial"],
					desc = L["Trivial"],
					get = function() return TipTac_Config.classification_trivial end,
					set = function(info, v)	TipTac_Config.classification_trivial = v end,
					disabled = function() return false end,
					width = "full"
				},
				classification_normal = {
					type = "input",
					order = 30,
					name = L["Normal"],
					desc = L["Normal"],
					get = function() return TipTac_Config.classification_normal end,
					set = function(info, v)	TipTac_Config.classification_normal = v end,
					disabled = function() return false end,
					width = "full"
				},
				classification_elite = {
					type = "input",
					order = 40,
					name = L["Elite"],
					desc = L["Elite"],
					get = function() return TipTac_Config.classification_elite end,
					set = function(info, v)	TipTac_Config.classification_elite = v end,
					disabled = function() return false end,
					width = "full"
				},
				classification_worldboss = {
					type = "input",
					order = 50,
					name = L["Boss"],
					desc = L["Boss"],
					get = function() return TipTac_Config.classification_worldboss end,
					set = function(info, v)	TipTac_Config.classification_worldboss = v end,
					disabled = function() return false end,
					width = "full"
				},
				classification_rare = {
					type = "input",
					order = 60,
					name = L["Rare"],
					desc = L["Rare"],
					get = function() return TipTac_Config.classification_rare end,
					set = function(info, v)	TipTac_Config.classification_rare = v end,
					disabled = function() return false end,
					width = "full"
				},
				classification_rareelite = {
					type = "input",
					order = 70,
					name = L["Rare Elite"],
					desc = L["Rare Elite"],
					get = function() return TipTac_Config.classification_rareelite end,
					set = function(info, v)	TipTac_Config.classification_rareelite = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Fading = {
			type = "group",
			name = L["Fading"],
			order = 90,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Fading"],
					order = 0,
				},
				overrideFade = {
					type = "toggle",
					order = 10,
					name = L["Override Default GameTooltip Fade"],
					desc = L["Override Default GameTooltip Fade"],
					get = function() return TipTac_Config.overrideFade end,
					set = function(info, v)	TipTac_Config.overrideFade = v end,
					disabled = function() return false end,
					width = "full"
				},
				preFadeTime = {
					type = "range",
					min = 0,
					max = 5,
					step = 0.05,
					order = 20,
					name = L["Prefade Time"],
					desc = L["Prefade Time"],
					get = function() return TipTac_Config.preFadeTime end,
					set = function(info, v)	TipTac_Config.preFadeTime = v end,
					disabled = function() return false end,
					width = "full"
				},
				fadeTime = {
					type = "range",
					min = 0,
					max = 5,
					step = 0.05,
					order = 30,
					name = L["Fadeout Time"],
					desc = L["Fadeout Time"],
					get = function() return TipTac_Config.fadeTime end,
					set = function(info, v)	TipTac_Config.fadeTime = v end,
					disabled = function() return false end,
					width = "full"
				},
				hideWorldTips = {
					type = "toggle",
					order = 40,
					name = L["Instantly Hide World Frame Tips"],
					desc = L["Instantly Hide World Frame Tips"],
					get = function() return TipTac_Config.hideWorldTips end,
					set = function(info, v)	TipTac_Config.hideWorldTips = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Bars = {
			type = "group",
			name = L["Bars"],
			order = 100,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Bars"],
					order = 0,
				},
				barFontFace = {
					type = "select",
					dialogControl = 'LSM30_Font',
					style = "dropdown",
					values = DROPDOWN_FONT,
					order = 10,
					name = L["Font Face"],
					desc = L["Font Face"],
					get = function() return DROPDOWN_FONT_REVERT[TipTac_Config.barFontFace] end,
					set = function(info, v)	TipTac_Config.barFontFace = DROPDOWN_BACKGROUND[v] end,
					disabled = function() return false end,
					width = "full"
				},
				barFontFlags = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_FONTFLAGS,
					order = 20,
					name = L["Font Flags"],
					desc = L["Font Flags"],
					get = function() return TipTac_Config.barFontFlags end,
					set = function(info, v)	TipTac_Config.barFontFlags = v end,
					disabled = function() return false end,
					width = "full"
				},
				barFontSize = {
					type = "range",
					min = 6,
					max = 29,
					step = 1,
					order = 30,
					name = L["Font Size"],
					desc = L["Font Size"],
					get = function() return TipTac_Config.barFontSize end,
					set = function(info, v)	TipTac_Config.barFontSize = v end,
					disabled = function() return false end,
					width = "full"
				},
				barTexture = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_STATUSBAR,--LibSharedMedia:HashTable("statusbar"),
					dialogControl = "LSM30_Statusbar",
					order = 40,
					name = L["Bar Texture"],
					desc = L["Bar Texture"],
					get = function() return DROPDOWN_STATUSBAR_REVERT[TipTac_Config.barTexture] end,
					set = function(info, v)	TipTac_Config.barTexture = DROPDOWN_STATUSBAR[v] end,
					disabled = function() return false end,
				},
				barHeight = {
					type = "range",
					min = 1,
					max = 50,
					step = 1,
					order = 50,
					name = L["Bar Height"],
					desc = L["Bar Height"],
					get = function() return TipTac_Config.barHeight end,
					set = function(info, v)	TipTac_Config.barHeight = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		BarTypes = {
			type = "group",
			name = L["Bar Types"],
			order = 110,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Bar Types"],
					order = 0,
				},
				hideDefaultBar = {
					type = "toggle",
					order = 10,
					name = L["Hide the Default Health Bar"],
					desc = L["Hide the Default Health Bar"],
					get = function() return TipTac_Config.hideDefaultBar end,
					set = function(info, v)	TipTac_Config.hideDefaultBar = v end,
					disabled = function() return false end,
					width = "full"
				},
				barsCondenseValues = {
					type = "toggle",
					order = 20,
					name = L["Show Condensed Bar Values"],
					desc = L["Show Condensed Bar Values"],
					get = function() return TipTac_Config.barsCondenseValues end,
					set = function(info, v)	TipTac_Config.barsCondenseValues = v end,
					disabled = function() return false end,
					width = "full"
				},
				healthBar = {
					type = "toggle",
					order = 30,
					name = L["Show Health Bar"],
					desc = L["Show Health Bar"],
					get = function() return TipTac_Config.healthBar end,
					set = function(info, v)	TipTac_Config.healthBar = v end,
					disabled = function() return false end,
					width = "full"
				},
				healthBarText = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_BARTEXTFORMAT,
					order = 40,
					name = L["Health Bar Text"],
					desc = L["Health Bar Text"],
					get = function() return TipTac_Config.healthBarText end,
					set = function(info, v)	TipTac_Config.healthBarText = v end,
					disabled = function() return false end,
					width = "full"
				},
				healthBarClassColor = {
					type = "toggle",
					order = 50,
					name = L["Class Colored Health Bar"],
					desc = L["Class Colored Health Bar"],
					get = function() return TipTac_Config.healthBarClassColor end,
					set = function(info, v)	TipTac_Config.healthBarClassColor = v end,
					disabled = function() return false end,
					width = "full"
				},
				healthBarColor = {
					type = "color",
					order = 60,
					name = L["Health Bar Color"],
					desc = L["Health Bar Color"],
					get = function() return PercentToColor(TipTac_Config.healthBarColor) end,
					set = function(info, r, g, b, a) TipTac_Config.healthBarColor = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				manaBar = {
					type = "toggle",
					order = 70,
					name = L["Show Mana Bar"],
					desc = L["Show Mana Bar"],
					get = function() return TipTac_Config.manaBar end,
					set = function(info, v)	TipTac_Config.manaBar = v end,
					disabled = function() return false end,
					width = "full"
				},
				manaBarText = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_BARTEXTFORMAT,
					order = 80,
					name = L["Mana Bar Text"],
					desc = L["Mana Bar Text"],
					get = function() return TipTac_Config.manaBarText end,
					set = function(info, v)	TipTac_Config.manaBarText = v end,
					disabled = function() return false end,
					width = "full"
				},
				manaBarColor = {
					type = "color",
					order = 90,
					name = L["Mana Bar Color"],
					desc = L["Mana Bar Color"],
					get = function() return PercentToColor(TipTac_Config.manaBarColor) end,
					set = function(info, r, g, b, a) TipTac_Config.manaBarColor = ColorToPercent(r, b, g, a) end,
					disabled = function() return false end,
					width = "full"
				},
				powerBar = {
					type = "toggle",
					order = 100,
					name = L["Show Energy, Rage, Runic Power or Focus Bar"],
					desc = L["Show Energy, Rage, Runic Power or Focus Bar"],
					get = function() return TipTac_Config.powerBar end,
					set = function(info, v)	TipTac_Config.powerBar = v end,
					disabled = function() return false end,
					width = "full"
				},
				powerBarText = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_BARTEXTFORMAT,
					order = 110,
					name = L["Power Bar Text"],
					desc = L["Power Bar Text"],
					get = function() return TipTac_Config.powerBarText end,
					set = function(info, v)	TipTac_Config.powerBarText = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Auras = {
			type = "group",
			name = L["Auras"],
			order = 120,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Auras"],
					order = 0,
				},
				aurasAtBottom = {
					type = "toggle",
					order = 10,
					name = L["Put Aura Icons at the Bottom Instead of Top"],
					desc = L["Put Aura Icons at the Bottom Instead of Top"],
					get = function() return TipTac_Config.aurasAtBottom end,
					set = function(info, v)	TipTac_Config.aurasAtBottom = v end,
					disabled = function() return false end,
					width = "full"
				},
				showBuffs = {
					type = "toggle",
					order = 20,
					name = L["Show Unit Buffs"],
					desc = L["Show Unit Buffs"],
					get = function() return TipTac_Config.showBuffs end,
					set = function(info, v)	TipTac_Config.showBuffs = v end,
					disabled = function() return false end,
					width = "full"
				},
				showDebuffs = {
					type = "toggle",
					order = 30,
					name = L["Show Unit Debuffs"],
					desc = L["Show Unit Debuffs"],
					get = function() return TipTac_Config.showDebuffs end,
					set = function(info, v)	TipTac_Config.showDebuffs = v end,
					disabled = function() return false end,
					width = "full"
				},
				selfAurasOnly = {
					type = "toggle",
					order = 40,
					name = L["Only Show Auras Coming from You"],
					desc = L["Only Show Auras Coming from You"],
					get = function() return TipTac_Config.selfAurasOnly end,
					set = function(info, v)	TipTac_Config.selfAurasOnly = v end,
					disabled = function() return false end,
					width = "full"
				},
				auraSize = {
					type = "range",
					min = 8,
					max = 60,
					step = 1,
					order = 50,
					name = L["Aura Icon Dimension"],
					desc = L["Aura Icon Dimension"],
					get = function() return TipTac_Config.auraSize end,
					set = function(info, v)	TipTac_Config.auraSize = v end,
					disabled = function() return false end,
					width = "full"
				},
				auraMaxRows = {
					type = "range",
					min = 1,
					max = 8,
					step = 1,
					order = 60,
					name = L["Max Aura Rows"],
					desc = L["Max Aura Rows"],
					get = function() return TipTac_Config.auraMaxRows end,
					set = function(info, v)	TipTac_Config.auraMaxRows = v end,
					disabled = function() return false end,
					width = "full"
				},
				showAuraCooldown = {
					type = "toggle",
					order = 70,
					name = L["Show Cooldown Models"],
					desc = L["Show Cooldown Models"],
					get = function() return TipTac_Config.showAuraCooldown end,
					set = function(info, v)	TipTac_Config.showAuraCooldown = v end,
					disabled = function() return false end,
					width = "full"
				},
				noCooldownCount = {
					type = "toggle",
					order = 80,
					name = L["No Cooldown Count Text"],
					desc = L["No Cooldown Count Text"],
					get = function() return TipTac_Config.noCooldownCount end,
					set = function(info, v)	TipTac_Config.noCooldownCount = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Icon = {
			type = "group",
			name = L["Icon"],
			order = 130,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Icon"],
					order = 0,
				},
				iconRaid = {
					type = "toggle",
					order = 10,
					name = L["Show Raid Icon"],
					desc = L["Show Raid Icon"],
					get = function() return TipTac_Config.iconRaid end,
					set = function(info, v)	TipTac_Config.iconRaid = v end,
					disabled = function() return false end,
					width = "full"
				},
				iconFaction = {
					type = "toggle",
					order = 20,
					name = L["Show Faction Icon"],
					desc = L["Show Faction Icon"],
					get = function() return TipTac_Config.iconFaction end,
					set = function(info, v)	TipTac_Config.iconFaction = v end,
					disabled = function() return false end,
					width = "full"
				},
				iconCombat = {
					type = "toggle",
					order = 30,
					name = L["Show Combat Icon"],
					desc = L["Show Combat Icon"],
					get = function() return TipTac_Config.iconCombat end,
					set = function(info, v)	TipTac_Config.iconCombat = v end,
					disabled = function() return false end,
					width = "full"
				},
				iconAnchor = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORPOS,
					order = 40,
					name = L["Icon Anchor"],
					desc = L["Icon Anchor"],
					get = function() return TipTac_Config.iconAnchor end,
					set = function(info, v)	TipTac_Config.iconAnchor = v end,
					disabled = function() return false end,
					width = "full"
				},
				iconSize = {
					type = "range",
					min = 8,
					max = 60,
					step = 1,
					order = 50,
					name = L["Icon Dimension"],
					desc = L["Icon Dimension"],
					get = function() return TipTac_Config.iconSize end,
					set = function(info, v)	TipTac_Config.iconSize = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Anchors = {
			type = "group",
			name = L["Anchors"],
			order = 140,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Anchors"],
					order = 0,
				},
				anchorWorldUnitType = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORTYPE,
					order = 10,
					name = L["World Unit Type"],
					desc = L["World Unit Type"],
					get = function() return TipTac_Config.anchorWorldUnitType end,
					set = function(info, v)	TipTac_Config.anchorWorldUnitType = v end,
					disabled = function() return false end,
					width = "full"
				},
				anchorWorldUnitPoint = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORPOS,
					order = 20,
					name = L["World Unit Point"],
					desc = L["World Unit Point"],
					get = function() return TipTac_Config.anchorWorldUnitPoint end,
					set = function(info, v)	TipTac_Config.anchorWorldUnitPoint = v end,
					disabled = function() return false end,
					width = "full"
				},
				anchorWorldTipType = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORTYPE,
					order = 30,
					name = L["World Tip Type"],
					desc = L["World Tip Type"],
					get = function() return TipTac_Config.anchorWorldTipType end,
					set = function(info, v)	TipTac_Config.anchorWorldTipType = v end,
					disabled = function() return false end,
					width = "full"
				},
				anchorWorldTipPoint = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORPOS,
					order = 40,
					name = L["World Tip Point"],
					desc = L["World Tip Point"],
					get = function() return TipTac_Config.anchorWorldTipPoint end,
					set = function(info, v)	TipTac_Config.anchorWorldTipPoint = v end,
					disabled = function() return false end,
					width = "full"
				},
				anchorFrameUnitType = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORTYPE,
					order = 50,
					name = L["Frame Unit Type"],
					desc = L["Frame Unit Type"],
					get = function() return TipTac_Config.anchorFrameUnitType end,
					set = function(info, v)	TipTac_Config.anchorFrameUnitType = v end,
					disabled = function() return false end,
					width = "full"
				},
				anchorFrameUnitPoint = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORPOS,
					order = 60,
					name = L["Frame Unit Point"],
					desc = L["Frame Unit Point"],
					get = function() return TipTac_Config.anchorFrameUnitPoint end,
					set = function(info, v)	TipTac_Config.anchorFrameUnitPoint = v end,
					disabled = function() return false end,
					width = "full"
				},
				anchorFrameTipType = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORTYPE,
					order = 70,
					name = L["Frame Tip Type"],
					desc = L["Frame Tip Type"],
					get = function() return TipTac_Config.anchorFrameTipType end,
					set = function(info, v)	TipTac_Config.anchorFrameTipType = v end,
					disabled = function() return false end,
					width = "full"
				},
				anchorFrameTipPoint = {
					type = "select",
					style = "dropdown",
					values = DROPDOWN_ANCHORPOS,
					order = 80,
					name = L["Frame Tip Point"],
					desc = L["Frame Tip Point"],
					get = function() return TipTac_Config.anchorFrameTipPoint end,
					set = function(info, v)	TipTac_Config.anchorFrameTipPoint = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Mouse = {
			type = "group",
			name = L["Mouse"],
			order = 150,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Mouse"],
					order = 0,
				},
				mouseOffsetX = {
					type = "range",
					min = -200,
					max = 200,
					step = 1,
					order = 10,
					name = L["Mouse Anchor X Offset"],
					desc = L["Mouse Anchor X Offset"],
					get = function() return TipTac_Config.mouseOffsetX end,
					set = function(info, v)	TipTac_Config.mouseOffsetX = v end,
					disabled = function() return false end,
					width = "full"
				},
				mouseOffsetY = {
					type = "range",
					min = -200,
					max = 200,
					step = 1,
					order = 20,
					name = L["Mouse Anchor Y Offset"],
					desc = L["Mouse Anchor Y Offset"],
					get = function() return TipTac_Config.mouseOffsetY end,
					set = function(info, v)	TipTac_Config.mouseOffsetY = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		},
		Combat = {
			type = "group",
			name = L["Combat"],
			order = 160,
			args = {
				header = {
					type = "header",
					name = "TipTac - "..L["Combat"],
					order = 0,
				},
				hideAllTipsInCombat = {
					type = "toggle",
					order = 10,
					name = L["Hide All Unit Tips in Combat"],
					desc = L["Hide All Unit Tips in Combat"],
					get = function() return TipTac_Config.hideAllTipsInCombat end,
					set = function(info, v)	TipTac_Config.hideAllTipsInCombat = v end,
					disabled = function() return false end,
					width = "full"
				},
				hideUFTipsInCombat = {
					type = "toggle",
					order = 20,
					name = L["Hide Unit Tips for Unit Frames in Combat"],
					desc = L["Hide Unit Tips for Unit Frames in Combat"],
					get = function() return TipTac_Config.hideUFTipsInCombat end,
					set = function(info, v)	TipTac_Config.hideUFTipsInCombat = v end,
					disabled = function() return false end,
					width = "full"
				},
				showHiddenTipsOnShift = {
					type = "toggle",
					order = 30,
					name = L["Still Show Hidden Tips when Holding Shift"],
					desc = L["Still Show Hidden Tips when Holding Shift"],
					get = function() return TipTac_Config.showHiddenTipsOnShift end,
					set = function(info, v)	TipTac_Config.showHiddenTipsOnShift = v end,
					disabled = function() return false end,
					width = "full"
				}
			}
		}
	}
};