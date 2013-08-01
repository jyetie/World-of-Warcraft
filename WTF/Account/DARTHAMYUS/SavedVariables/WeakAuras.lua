
WeakAurasSaved = {
	["login_squelch_time"] = 5,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -24.000244140625,
		["yOffset"] = -173.0001831054688,
		["height"] = 492,
		["width"] = 630.0003662109375,
	},
	["tempIconCache"] = {
		["Sprint"] = "Interface\\Icons\\Ability_Rogue_Sprint",
		["Crippling Poison"] = "Interface\\Icons\\Ability_PoisonSting",
		["Deadly Poison"] = "Interface\\Icons\\Ability_Rogue_DualWeild",
		["Alter Time"] = "Interface\\Icons\\spell_mage_altertime",
		["Time Lord"] = "Interface\\Icons\\achievement_boss_alakir the windlord",
		["Serpent Sting"] = "Interface\\Icons\\Ability_Hunter_Quickshot",
		["Leeching Poison"] = "Interface\\Icons\\rogue_leeching_poison",
		["Slice and Dice"] = "Interface\\Icons\\Ability_Rogue_SliceDice",
		["Fingers of Frost"] = "Interface\\Icons\\Ability_Mage_WintersGrasp",
		["Heroism"] = "Interface\\Icons\\Ability_Shaman_Heroism",
		["Burst of Speed"] = "Interface\\Icons\\rogue_burstofspeed",
		["The Beast Within"] = "Interface\\Icons\\Ability_Hunter_BeastWithin",
		["Time Warp"] = "INTERFACE\\ICONS\\ability_mage_timewarp",
		["Ascendance"] = "Interface\\Icons\\Spell_Fire_ElementalDevastation",
		["Mind-numbing Poison"] = "Interface\\Icons\\Spell_Nature_NullifyDisease",
		["Camouflage"] = "Interface\\Icons\\Ability_Hunter_Displacement",
		["Icy Veins"] = "Interface\\Icons\\Spell_Frost_ColdHearted",
		["Survivor's Bag"] = "INTERFACE\\ICONS\\inv_misc_bag_enchantedrunecloth",
		["Aspect of the Pack"] = "Interface\\Icons\\Ability_Mount_WhiteTiger",
		["Lightning Shield"] = "Interface\\Icons\\Spell_Nature_LightningShield",
		["Brain Freeze"] = "Interface\\Icons\\Ability_Mage_BrainFreeze",
		["Aspect of the Cheetah"] = "Interface\\Icons\\Ability_Mount_JungleTiger",
		["Sap"] = "Interface\\Icons\\Ability_Sap",
		["Recuperate"] = "INTERFACE\\ICONS\\ability_rogue_recuperate",
		["Invoker's Energy"] = "Interface\\Icons\\Spell_Arcane_Arcane03",
		["Stealth"] = "Interface\\Icons\\Ability_Stealth",
		["Flame Shock"] = "Interface\\Icons\\Spell_Fire_FlameShock",
		["Rapid Fire"] = "Interface\\Icons\\Ability_Hunter_RunningShot",
	},
	["displays"] = {
		["Bar Timers"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"New 3", -- [1]
				"New 3 2", -- [2]
			},
			["animate"] = true,
			["xOffset"] = 8,
			["border"] = "None",
			["yOffset"] = -137.0001220703125,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["sort"] = "descending",
			["expanded"] = true,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "TOP",
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["width"] = 257,
			["rotation"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["stagger"] = 0,
			["height"] = 77.99998474121094,
			["id"] = "Bar Timers",
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "dynamicgroup",
		},
		["high dmg"] = {
			["color"] = {
				1, -- [1]
				0.0392156862745098, -- [2]
				0.1450980392156863, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura11",
			["untrigger"] = {
				["use_alertType"] = false,
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "high dmg",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "event",
				["subeventSuffix"] = "_CAST_START",
				["duration"] = "1",
				["event"] = "GTFO",
				["unit"] = "player",
				["alertType"] = 1,
				["unevent"] = "timed",
				["use_alertType"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["width"] = 383,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 90,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 344,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["New 3"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -3.99993896484375,
			["stacksFlags"] = "None",
			["yOffset"] = -188.9998168945313,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"The Beast Within", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Bar Timers",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 15,
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["displayTextRight"] = "%p",
			["icon_side"] = "LEFT",
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Arial Narrow",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "New 3",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 257,
			["borderOffset"] = 5,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 38,
			["orientation"] = "HORIZONTAL",
			["barInFront"] = true,
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Low Mana"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 274.0000610351563,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura70",
			["xOffset"] = -6.103515625e-005,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["use_powertype"] = true,
				["unevent"] = "auto",
				["power_operator"] = "<=",
				["use_power"] = false,
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["powertype"] = 0,
				["names"] = {
				},
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_percentpower"] = true,
				["percentpower"] = "20",
				["percentpower_operator"] = "<=",
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Low Mana",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 225.0001373291016,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 200.0000762939453,
			["rotate"] = true,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Stormlash Totem"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["use_totemName"] = true,
				["event"] = "Totem",
				["totemName"] = "Stormlash Totem",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["totemType"] = 4,
				["use_unit"] = true,
				["unevent"] = "auto",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0.4784313725490196, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Bars",
			["untrigger"] = {
				["totemType"] = 4,
			},
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = true,
					["message"] = "**Stormlash Totem down! 10 seconds!**",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["do_message"] = true,
					["message"] = "**Stormlash Totem Ended**",
				},
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "Stormlash Totem",
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Stormlash Totem",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 268,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 20,
			["orientation"] = "HORIZONTAL",
			["barInFront"] = true,
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fingers of Frost"] = {
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -166.9999694824219,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["desaturate"] = false,
			["icon"] = true,
			["inverse"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Fingers of Frost", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["xOffset"] = 42.00006103515625,
			["font"] = "Tempest",
			["numTriggers"] = 1,
			["id"] = "Fingers of Frost",
			["height"] = 64,
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["stealth 2"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["untrigger"] = {
			},
			["scale"] = 1,
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["model_x"] = 0,
			["xOffset"] = 2.99957275390625,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "stealth 2",
			["model_z"] = -1.799999952316284,
			["advance"] = true,
			["model_path"] = "SPELLS/Sap_Impact_Chest.m2",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Camouflage", -- [1]
				},
			},
			["model_y"] = -0.9499999284744263,
			["frameStrata"] = 1,
			["width"] = 374.000732421875,
			["rotation"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["height"] = 559.0003051757813,
			["yOffset"] = 180,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["New"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["untrigger"] = {
			},
			["scale"] = 1,
			["anchorPoint"] = "CENTER",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["model_x"] = -0.1499999761581421,
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["names"] = {
					"Sap", -- [1]
				},
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
			},
			["model_z"] = -0.6499999761581421,
			["advance"] = false,
			["model_path"] = "SPELLS/BeastSoothe_State_Head.m2",
			["id"] = "New",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 561.0003051757813,
			["rotation"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["borderOffset"] = 5,
			["height"] = 468,
			["xOffset"] = -135.9998779296875,
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Amazy",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = -224.0000610351563,
		},
		["Pack"] = {
			["color"] = {
				1, -- [1]
				0.9882352941176471, -- [2]
				0.9725490196078431, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 309,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Spells\\Aspect_Cheetah",
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Pack",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["names"] = {
					"Aspect of the Cheetah", -- [1]
					"Aspect of the Pack", -- [2]
				},
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
			},
			["width"] = 200,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Tarley",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 5,
		},
		["Deadly Poison"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 90,
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Amazy",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = 32,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["icon"] = true,
			["id"] = "Deadly Poison",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["count"] = "1",
				["names"] = {
					"Deadly Poison", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["countOperator"] = ">=",
				["inverse"] = true,
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Ability_Rogue_DualWeild",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Spells"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Flame Shock", -- [1]
				"Lava Burst Icon", -- [2]
				"Elemental Blast", -- [3]
				"Earth Shock", -- [4]
			},
			["animate"] = true,
			["xOffset"] = -133.9998779296875,
			["border"] = "None",
			["yOffset"] = -168.9999389648438,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["sort"] = "none",
			["expanded"] = true,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["selfPoint"] = "LEFT",
			["id"] = "Spells",
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["width"] = 262,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["rotation"] = 0,
			["height"] = 64.00001525878906,
			["trigger"] = {
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "dynamicgroup",
		},
		["Flame Shock"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 0,
				["remaining_operator"] = "<=",
				["names"] = {
					"Flame Shock", -- [1]
				},
				["remaining"] = "2",
				["debuffType"] = "HARMFUL",
				["custom_hide"] = "timed",
				["use_remaining"] = true,
				["ownOnly"] = true,
				["unevent"] = "auto",
				["rem"] = "3",
				["unit"] = "target",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["use_spellName"] = true,
				["use_itemName"] = true,
				["subeventSuffix"] = "_CAST_START",
				["remOperator"] = "<=",
				["spellName"] = 8050,
				["use_unit"] = true,
				["useRem"] = true,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "Spells",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["desaturate"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "auto",
						["spellName"] = 8050,
						["ownOnly"] = true,
						["event"] = "Action Usable",
						["names"] = {
							"Flame Shock", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_spellName"] = true,
						["inverse"] = true,
						["use_unit"] = true,
						["unit"] = "target",
						["use_targetRequired"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
						["spellName"] = 8050,
					},
				}, -- [1]
			},
			["id"] = "Flame Shock",
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 2,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["untrigger"] = {
				["spellName"] = 8050,
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Fire_FlameShock",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Ascendance"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["names"] = {
					"Ascendance", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0.9607843137254902, -- [1]
				0.5333333333333333, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Bars",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Ascendance",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 268,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 20,
			["orientation"] = "HORIZONTAL",
			["barInFront"] = true,
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Brain Freeze"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -166.0001525878906,
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
			["xOffset"] = -42.99969482421875,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["icon"] = true,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Brain Freeze", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Brain Freeze",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 64,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Ability_Mage_FrostFireBolt",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Lightning Shield"] = {
			["color"] = {
				0, -- [1]
				0.4745098039215686, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 4.196746826171875,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura21",
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["id"] = "Lightning Shield",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 308,
			["discrete_rotation"] = 0,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["inverse"] = true,
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 295,
			["rotate"] = true,
			["load"] = {
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Rainah",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -1.8951416015625,
		},
		["Bars"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Heroism", -- [1]
				"Ascendance", -- [2]
				"Stormlash Totem", -- [3]
			},
			["animate"] = false,
			["xOffset"] = 6.103515625e-005,
			["border"] = "None",
			["yOffset"] = 233.9999389648438,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["sort"] = "none",
			["expanded"] = true,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["selfPoint"] = "TOP",
			["id"] = "Bars",
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["width"] = 268.0001220703125,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["rotation"] = 0,
			["height"] = 64.00006103515625,
			["trigger"] = {
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "dynamicgroup",
		},
		["Recuperate"] = {
			["textFlags"] = "None",
			["stacksSize"] = 24,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 18.00006103515625,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Recuperate", -- [1]
				},
				["autoclone"] = true,
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["displayTextLeft"] = "%n",
			["textSize"] = 12,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["yOffset"] = -121,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "LEFT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["displayTextRight"] = "%p",
			["texture"] = "Flat",
			["textFont"] = "Tempest",
			["stacksFont"] = "Tempest",
			["auto"] = true,
			["borderOffset"] = 5,
			["id"] = "Recuperate",
			["timerFont"] = "Tempest",
			["frameStrata"] = 1,
			["width"] = 243,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 24,
			["orientation"] = "HORIZONTAL",
			["barInFront"] = true,
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Mirror Image"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Mage Bars",
			["stacksFlags"] = "None",
			["yOffset"] = 254.0000610351563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_castType"] = false,
				["sourceunit"] = "player",
				["use_status"] = false,
				["use_matchedRune"] = false,
				["ownOnly"] = true,
				["use_spell"] = true,
				["unit"] = "player",
				["source"] = "Mirror Image",
				["remaining"] = "150",
				["duration"] = "30",
				["remaining_operator"] = ">=",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["use_totemType"] = true,
				["spellName"] = "Mirror Image",
				["type"] = "event",
				["use_remaining"] = true,
				["subeventSuffix"] = "_CAST_SUCCESS",
				["unevent"] = "timed",
				["event"] = "Combat Log",
				["use_source"] = false,
				["threatUnit"] = "none",
				["totemType"] = 1,
				["use_threatUnit"] = true,
				["use_spellName"] = true,
				["spell"] = "Mirror Image",
				["use_sourceunit"] = true,
				["debuffType"] = "HELPFUL",
				["use_inverse"] = false,
				["names"] = {
					"Heroism", -- [1]
				},
				["use_unit"] = true,
			},
			["text"] = true,
			["barColor"] = {
				0.3490196078431372, -- [1]
				0.3529411764705882, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["textSize"] = 12,
			["stickyDuration"] = false,
			["height"] = 20,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["untrigger"] = {
				["threatUnit"] = "none",
				["spellName"] = 55342,
			},
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 9.0001220703125,
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Mirror Image",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = false,
			["barInFront"] = true,
			["orientation"] = "HORIZONTAL",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["message"] = "**Heroism! 40 seconds!**",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "**Heroism Ended!**",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fire"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 382,
			["stacksFlags"] = "None",
			["yOffset"] = -71.99996948242188,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["totemName"] = "Searing Totem",
				["use_inverse"] = false,
				["event"] = "Totem",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["names"] = {
				},
				["use_unit"] = true,
				["totemType"] = 1,
				["use_totemName"] = true,
				["unit"] = "player",
				["use_totemType"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0.06274509803921569, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["height"] = 15,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["difficulty"] = "lfr",
				["use_difficulty"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
					},
				},
			},
			["numTriggers"] = 3,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["barInFront"] = true,
			["disjunctive"] = true,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["id"] = "Fire",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["borderOffset"] = 5,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_totemName"] = true,
						["event"] = "Totem",
						["subeventPrefix"] = "SPELL",
						["totemName"] = "Fire Elemental Totem",
						["unit"] = "player",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["totemType"] = 1,
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_totemName"] = true,
						["event"] = "Totem",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["totemType"] = 1,
						["use_totemType"] = true,
						["totemName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 170,
			["untrigger"] = {
				["totemType"] = 1,
			},
			["borderInset"] = 11,
			["inverse"] = false,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["icon"] = true,
			["parent"] = "Totems",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Combo Point 4"] = {
			["color"] = {
				0.7254901960784314, -- [1]
				0.7254901960784314, -- [2]
				0.7254901960784314, -- [3]
				0.7300000190734863, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = 182.5,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["combopoints"] = "4",
				["unevent"] = "auto",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["combopoints_operator"] = ">=",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Combo Point 4",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 65,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 65,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Combo Points",
		},
		["Earth Shock"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Spells",
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 3,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useRem"] = true,
						["rem"] = "6.5",
						["remOperator"] = ">=",
						["names"] = {
							"Flame Shock", -- [1]
						},
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useCount"] = true,
						["count"] = "7",
						["custom_hide"] = "timed",
						["countOperator"] = "==",
						["names"] = {
							"Lightning Shield", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 64,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Earth Shock",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["event"] = "Action Usable",
				["unit"] = "player",
				["spellName"] = 8042,
				["use_spellName"] = true,
				["use_targetRequired"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["icon"] = true,
			["height"] = 64,
			["untrigger"] = {
				["spellName"] = 8042,
			},
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Sprint"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 1,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Sprint", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0.1725490196078431, -- [2]
				0.09803921568627451, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["displayTextLeft"] = "%n",
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Amazy",
				["talent"] = 12,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = false,
			["height"] = 15,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderOffset"] = 5,
			["id"] = "Sprint",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 200,
			["displayTextRight"] = "%p",
			["borderInset"] = 11,
			["inverse"] = false,
			["yOffset"] = 64,
			["orientation"] = "HORIZONTAL",
			["textSize"] = 12,
			["selfPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Crippling Poison"] = {
			["xOffset"] = 113.0000610351563,
			["yOffset"] = 223,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["useTooltip"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["inverse"] = true,
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Leeching Poison", -- [1]
					"Mind-numbing Poison", -- [2]
					"Crippling Poison", -- [3]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["disjunctive"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "Crippling Poison",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["untrigger"] = {
			},
			["displayIcon"] = "Interface\\Icons\\rogue_leeching_poison",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Lava Burst Icon"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Spells",
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["regionType"] = "icon",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "auto",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useRem"] = true,
						["names"] = {
							"Flame Shock", -- [1]
						},
						["rem"] = "3",
						["unit"] = "target",
						["remOperator"] = ">=",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 64,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Lava Burst Icon",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["event"] = "Action Usable",
				["unit"] = "player",
				["use_targetRequired"] = true,
				["use_spellName"] = true,
				["spellName"] = 51505,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["icon"] = true,
			["height"] = 64,
			["untrigger"] = {
				["spellName"] = 51505,
			},
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Earth"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 382,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["totemType"] = 2,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["use_totemName"] = true,
				["event"] = "Totem",
				["totemName"] = "Tremor Totem",
				["use_unit"] = true,
				["unit"] = "player",
				["names"] = {
				},
				["totemType"] = 2,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0.3098039215686275, -- [1]
				0.6549019607843137, -- [2]
				0.2745098039215687, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Totems",
			["displayTextLeft"] = "%n",
			["stickyDuration"] = false,
			["barInFront"] = true,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["difficulty"] = "lfr",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
					},
				},
			},
			["numTriggers"] = 3,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["yOffset"] = -71.99996948242188,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_totemName"] = true,
						["event"] = "Totem",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_inverse"] = false,
						["totemName"] = "Earthbind Totem",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["totemType"] = 2,
						["use_totemType"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["totemType"] = 2,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_totemName"] = true,
						["event"] = "Totem",
						["subeventPrefix"] = "SPELL",
						["totemName"] = "Earth Elemental Totem",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["totemType"] = 2,
						["use_totemType"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["totemType"] = 2,
					},
				}, -- [2]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "Earth",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 170,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["inverse"] = false,
			["height"] = 15,
			["orientation"] = "HORIZONTAL",
			["textSize"] = 12,
			["selfPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Combo Point 5"] = {
			["xOffset"] = 232.5,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.8400000035762787, -- [4]
			},
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["combopoints_operator"] = ">=",
				["unevent"] = "auto",
				["combopoints"] = "5",
				["custom_hide"] = "timed",
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Combo Point 5",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["width"] = 65,
			["height"] = 65,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Combo Points",
		},
		["Alter Time"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Mage Bars",
			["stacksFlags"] = "None",
			["barInFront"] = true,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["message"] = "**Heroism! 40 seconds!**",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "**Heroism Ended!**",
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Alter Time", -- [1]
				},
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0.8941176470588235, -- [2]
				0.2784313725490196, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["icon"] = false,
			["stickyDuration"] = false,
			["height"] = 20,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textSize"] = 12,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = 254.0000610351563,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 9.0001220703125,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.4900000095367432, -- [4]
			},
			["id"] = "Alter Time",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
			["stacks"] = true,
			["borderInset"] = 11,
			["inverse"] = false,
			["untrigger"] = {
			},
			["orientation"] = "HORIZONTAL",
			["selfPoint"] = "CENTER",
			["displayTextLeft"] = "%n",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Combo Point 2"] = {
			["color"] = {
				0.2352941176470588, -- [1]
				0.2352941176470588, -- [2]
				0.2352941176470588, -- [3]
				0.7300000190734863, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = 82.5,
			["selfPoint"] = "CENTER",
			["id"] = "Combo Point 2",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["combopoints"] = "2",
				["unevent"] = "auto",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["combopoints_operator"] = ">=",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 65,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 65,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Combo Points",
		},
		["Burst of Speed"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 1,
			["stacksFlags"] = "None",
			["yOffset"] = 64,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Burst of Speed", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["text"] = true,
			["barColor"] = {
				0.2, -- [1]
				0.2666666666666667, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Amazy",
				["talent"] = 12,
				["use_talent"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["textSize"] = 12,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["displayTextRight"] = "%p",
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["borderOffset"] = 5,
			["id"] = "Burst of Speed",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 200,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 15,
			["orientation"] = "HORIZONTAL",
			["barInFront"] = true,
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Water"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 382,
			["stacksFlags"] = "None",
			["barInFront"] = true,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["displayTextLeft"] = "%n",
			["disjunctive"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["totemName"] = "Healing Stream Totem",
				["use_inverse"] = false,
				["event"] = "Totem",
				["unit"] = "player",
				["use_totemName"] = true,
				["totemType"] = 3,
				["use_unit"] = true,
				["names"] = {
				},
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0, -- [1]
				0.06666666666666667, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "Totems",
			["icon"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textSize"] = 12,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["difficulty"] = "lfr",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
					},
				},
			},
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = -71.99996948242188,
			["untrigger"] = {
				["totemType"] = 3,
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Water",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 170,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 15,
			["orientation"] = "HORIZONTAL",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Flametongue"] = {
			["xOffset"] = -1.8951416015625,
			["mirror"] = false,
			["yOffset"] = 151.0819396972656,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Spells\\Strength_128",
			["trigger"] = {
				["enchant"] = "Flametongue",
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["names"] = {
					"No Match Found", -- [1]
				},
				["use_inverse"] = true,
				["event"] = "Weapon Enchant",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_weapon"] = true,
				["use_unit"] = true,
				["inverse"] = true,
				["use_enchant"] = true,
				["ownOnly"] = true,
				["weapon"] = "main",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["id"] = "Flametongue",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 150,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 150,
			["rotate"] = true,
			["load"] = {
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Rainah",
				["use_spec"] = true,
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.7450980392156863, -- [1]
				0.2156862745098039, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
		},
		["Mage Bars"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Mage Hero", -- [1]
				"Mirror Image", -- [2]
				"Icy Veins", -- [3]
				"Alter Time", -- [4]
				"Time Lord", -- [5]
			},
			["animate"] = true,
			["xOffset"] = -6.103515625e-005,
			["border"] = "None",
			["yOffset"] = 263,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["sort"] = "none",
			["expanded"] = true,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["selfPoint"] = "TOP",
			["id"] = "Mage Bars",
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["width"] = 267.9999389648438,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["rotation"] = 0,
			["height"] = 108.0000610351563,
			["trigger"] = {
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "dynamicgroup",
		},
		["New 2"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = 268.0001831054688,
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = -0.99993896484375,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["useRem"] = true,
				["inverse"] = true,
				["rem"] = "4",
				["remOperator"] = ">=",
				["names"] = {
					"Serpent Sting", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 2",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 64,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_PoisonCleansingTotem",
			["load"] = {
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Heroism"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["names"] = {
					"Heroism", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Bars",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message"] = "**Heroism! 40 seconds!**",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["do_message"] = true,
					["message"] = "**Heroism Ended!**",
				},
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Heroism",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 268,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 20,
			["orientation"] = "HORIZONTAL",
			["barInFront"] = true,
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Incoming Whisper"] = {
			["color"] = {
				0.8941176470588235, -- [1]
				0.2980392156862745, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -200,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["message_type"] = "WHISPER",
					["do_message"] = false,
					["message_dest"] = "Mirrored",
					["message"] = "Lol Trolled.",
					["custom"] = "MoveViewLeftStart()",
					["do_sound"] = false,
					["message_channel"] = "1",
					["sound_path"] = "Interface/AddOns/WeakAuras/PowerAurasMedia/Sounds/aggro.ogg",
					["do_custom"] = false,
					["sound"] = " custom",
				},
				["finish"] = {
					["message"] = "reads the whisper.",
					["custom"] = "MoveViewLeftStop()",
					["do_sound"] = false,
					["message_type"] = "EMOTE",
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Sound\\Spells\\FireBallImpactA.wav",
				},
			},
			["texture"] = "Spells\\T_Star3",
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "event",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["debuffType"] = "HELPFUL",
				["duration"] = "2",
				["event"] = "Chat Message",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Haunted", -- [1]
				},
				["unit"] = "player",
				["name"] = "New",
				["messageType"] = "CHAT_MSG_WHISPER",
				["use_unit"] = true,
				["unevent"] = "timed",
				["use_messageType"] = true,
				["custom_hide"] = "timed",
			},
			["desc"] = "Flings a spinning star across your screen to get your attention whenever you receive a whisper.",
			["animation"] = {
				["start"] = {
					["translateType"] = "custom",
					["use_rotate"] = true,
					["use_scale"] = false,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "return function(progress, start, delta) return start + \n(progress * delta) end",
					["duration_type"] = "seconds",
					["use_translate"] = true,
					["use_alpha"] = false,
					["scalex"] = 1,
					["type"] = "custom",
					["rotate"] = 720,
					["duration"] = "1",
					["translateFunc"] = "return function(progress, startX, startY, deltaX, deltaY) local angle = (progress + 1) * 0.5 * math.pi return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2)) end",
					["scaley"] = 1,
					["alpha"] = 0.5600000023841858,
					["scaleType"] = "custom",
					["y"] = -300,
					["x"] = -600,
					["scaleFunc"] = "return function(progress, startX, startY, scaleX, scaleY) return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY)) end",
					["colorR"] = 1,
					["preset"] = "spiral",
					["rotateFunc"] = "return function(progress, start, delta)\n  return start + (progress * delta)\nend",
					["colorA"] = 1,
					["rotateType"] = "custom",
				},
				["main"] = {
					["scaleFunc"] = "return function(progress, startX, startY, scaleX, scaleY)\n  return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\nend\n",
					["use_rotate"] = true,
					["duration"] = "4",
					["rotateType"] = "straight",
					["colorG"] = 1,
					["use_translate"] = false,
					["duration_type"] = "seconds",
					["scaleType"] = "custom",
					["type"] = "custom",
					["rotate"] = -1440,
					["use_scale"] = false,
					["translateFunc"] = "return function(progress, startX, startY, deltaX, deltaY)\n  return startX + (progress * deltaX), startY + (progress * deltaY)\nend\n",
					["scaley"] = 1,
					["alpha"] = 0,
					["translateType"] = "custom",
					["y"] = 300,
					["x"] = 600,
					["preset"] = "orbit",
					["colorR"] = 1,
					["scalex"] = 1,
					["rotateFunc"] = "return function(progress, start, delta)\n  return start + (progress * delta)\nend",
					["colorA"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Incoming Whisper",
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["width"] = 200,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = {
					["multi"] = {
					},
				},
				["zone"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -480,
		},
		["Mage Hero"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 9.0001220703125,
			["stacksFlags"] = "None",
			["barInFront"] = true,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["disjunctive"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["names"] = {
					"Heroism", -- [1]
				},
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Mage Bars",
			["selfPoint"] = "CENTER",
			["untrigger"] = {
			},
			["textSize"] = 12,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = 254.0000610351563,
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["message"] = "**Heroism! 40 seconds!**",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "**Heroism Ended!**",
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "aura",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Time Warp", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["borderOffset"] = 5,
			["id"] = "Mage Hero",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 268,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 2,
			["height"] = 20,
			["orientation"] = "HORIZONTAL",
			["displayTextLeft"] = "%n",
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Frenzied Regeneration"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = false,
			["yOffset"] = -236.0000457763672,
			["regionType"] = "icon",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = 6.103515625e-005,
			["inverse"] = false,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "",
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["glow_frame"] = "",
				},
			},
			["desaturate"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["useCount"] = true,
				["count"] = "10",
				["countOperator"] = "==",
				["names"] = {
					"Improved Regeneration", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["use_power"] = true,
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 1,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_powertype"] = true,
						["power"] = "60",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["id"] = "Frenzied Regeneration",
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Ability_BullRush",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Air"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 382,
			["stacksFlags"] = "None",
			["untrigger"] = {
				["totemType"] = 4,
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_inverse"] = false,
				["use_totemName"] = true,
				["event"] = "Totem",
				["totemName"] = "Capacitor Totem",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["names"] = {
				},
				["totemType"] = 4,
				["subeventPrefix"] = "SPELL",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0.6901960784313725, -- [1]
				0.7215686274509804, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Totems",
			["displayTextLeft"] = "%n",
			["stickyDuration"] = false,
			["barInFront"] = true,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["difficulty"] = "lfr",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
					},
				},
			},
			["numTriggers"] = 3,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["yOffset"] = -71.99996948242188,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_totemName"] = true,
						["event"] = "Totem",
						["subeventPrefix"] = "SPELL",
						["totemName"] = "Grounding Totem",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["totemType"] = 4,
						["use_totemType"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["totemType"] = 4,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_totemName"] = true,
						["event"] = "Totem",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["totemName"] = "Stormlash Totem",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["totemType"] = 4,
						["use_totemType"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["totemType"] = 4,
					},
				}, -- [2]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "Air",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 170,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["inverse"] = false,
			["height"] = 15,
			["orientation"] = "HORIZONTAL",
			["textSize"] = 12,
			["selfPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Invocation"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 293.9998779296875,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Invoker's Energy", -- [1]
				},
				["remOperator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["rem"] = "5",
				["useRem"] = true,
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0.6666666666666666, -- [2]
				0.8941176470588235, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["untrigger"] = {
			},
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["talent"] = 16,
				["class"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["height"] = 45,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderOffset"] = 5,
			["id"] = "Invocation",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 206,
			["displayTextRight"] = "%p",
			["borderInset"] = 11,
			["inverse"] = false,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = true,
					["do_custom"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\hurricane.ogg",
					["sound_channel"] = "Master",
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_frame"] = "Evocation",
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fire Totem"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = 150.0000610351563,
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = 0.000244140625,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["icon"] = true,
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_inverse"] = true,
				["event"] = "Totem",
				["unit"] = "player",
				["names"] = {
				},
				["totemType"] = 1,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Fire Totem",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 143.9998779296875,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["height"] = 137,
			["displayIcon"] = "Interface\\Icons\\Spell_Fire_SelfDestruct",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["use_size"] = false,
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["twentyfive"] = true,
						["ten"] = true,
						["arena"] = true,
						["fortyman"] = true,
						["pvp"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Combo Point 2 2"] = {
			["xOffset"] = 132.5,
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["color"] = {
				0.4705882352941176, -- [1]
				0.4705882352941176, -- [2]
				0.4705882352941176, -- [3]
				0.7300000190734863, -- [4]
			},
			["selfPoint"] = "CENTER",
			["id"] = "Combo Point 2 2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["combopoints_operator"] = ">=",
				["unevent"] = "auto",
				["combopoints"] = "3",
				["custom_hide"] = "timed",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["width"] = 65,
			["height"] = 65,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Combo Points",
		},
		["Icy Veins"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 9.0001220703125,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["names"] = {
					"Icy Veins", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0.6627450980392157, -- [1]
				0.8117647058823529, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["message"] = "**Heroism! 40 seconds!**",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "**Heroism Ended!**",
				},
			},
			["selfPoint"] = "CENTER",
			["timer"] = true,
			["height"] = 20,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["displayTextLeft"] = "%n",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["barInFront"] = true,
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Mage Bars",
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["borderOffset"] = 5,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Icy Veins",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 268,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = 254.0000610351563,
			["orientation"] = "HORIZONTAL",
			["stickyDuration"] = false,
			["icon"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["New 3 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -3.99993896484375,
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "shrink",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Rapid Fire", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Bar Timers",
			["displayTextLeft"] = "%n",
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -188.9998168945313,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["timerSize"] = 12,
			["icon_side"] = "LEFT",
			["frameStrata"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Arial Narrow",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["borderOffset"] = 5,
			["id"] = "New 3 2",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 257,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["inverse"] = false,
			["height"] = 38,
			["orientation"] = "HORIZONTAL",
			["textSize"] = 15,
			["selfPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["low damage"] = {
			["color"] = {
				1, -- [1]
				0.0392156862745098, -- [2]
				0.1450980392156863, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["use_alertType"] = false,
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura11",
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "low damage",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "event",
				["subeventSuffix"] = "_CAST_START",
				["duration"] = "1",
				["event"] = "GTFO",
				["unit"] = "player",
				["unevent"] = "timed",
				["names"] = {
				},
				["use_alertType"] = true,
				["subeventPrefix"] = "SPELL",
				["alertType"] = 2,
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 383,
			["rotation"] = 90,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 344,
			["rotate"] = true,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["Elemental Blast"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Spells",
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["spellName"] = 117014,
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = -94.0001220703125,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Elemental Blast",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["event"] = "Action Usable",
				["unit"] = "player",
				["use_targetRequired"] = true,
				["use_spellName"] = true,
				["spellName"] = 117014,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 64,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["height"] = 64,
			["yOffset"] = -160.9998779296875,
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Time Lord"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 9.0001220703125,
			["stacksFlags"] = "None",
			["yOffset"] = 254.0000610351563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["names"] = {
					"Time Lord", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				0.9686274509803922, -- [1]
				0.2235294117647059, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["displayTextLeft"] = "%n",
			["selfPoint"] = "CENTER",
			["timer"] = true,
			["height"] = 20,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["message"] = "**Heroism! 40 seconds!**",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "**Heroism Ended!**",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["untrigger"] = {
			},
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Mage Bars",
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["borderOffset"] = 5,
			["displayTextRight"] = "%p",
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Time Lord",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 268,
			["stacksFont"] = "Friz Quadrata TT",
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["barInFront"] = true,
			["orientation"] = "HORIZONTAL",
			["stickyDuration"] = false,
			["textSize"] = 12,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Nether Tempest"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "target",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Nether Tempest", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["untrigger"] = {
			},
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jyetie",
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["height"] = 15,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderOffset"] = 5,
			["id"] = "Nether Tempest",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 200,
			["displayTextRight"] = "%p",
			["borderInset"] = 11,
			["inverse"] = false,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Combo Point 1"] = {
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.7300000190734863, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["xOffset"] = 32.5,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["untrigger"] = {
			},
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["combopoints_operator"] = ">=",
				["unevent"] = "auto",
				["combopoints"] = "1",
				["custom_hide"] = "timed",
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Combo Point 1",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["width"] = 65,
			["height"] = 65,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Combo Points",
		},
		["Combo Points"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Combo Point 1", -- [1]
				"Combo Point 2", -- [2]
				"Combo Point 2 2", -- [3]
				"Combo Point 4", -- [4]
				"Combo Point 5", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -114.0000610351563,
			["border"] = false,
			["yOffset"] = -160.000244140625,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["frameStrata"] = 1,
			["regionType"] = "group",
			["untrigger"] = {
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["id"] = "Combo Points",
			["borderEdge"] = "None",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["Lava Burst"] = {
			["xOffset"] = -1.48187255859375,
			["mirror"] = false,
			["untrigger"] = {
				["unit"] = "target",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["yOffset"] = 293.4360961914063,
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Doodad\\G_GongTroll01.wav",
					["do_sound"] = true,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura13",
			["id"] = "Lava Burst",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["unit"] = "target",
				["spellName"] = 51505,
				["type"] = "status",
				["use_health"] = false,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["percenthealth"] = "25",
				["event"] = "Action Usable",
				["names"] = {
				},
				["health_operator"] = "<=",
				["use_spellName"] = true,
				["health"] = "25",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["use_percenthealth"] = true,
				["percenthealth_operator"] = "<=",
				["subeventSuffix"] = "_CAST_START",
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["names"] = {
							"Flame Shock", -- [1]
						},
						["type"] = "aura",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "target",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 221,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 2,
			["desaturate"] = false,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["use_never"] = true,
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Rainah",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				0.2823529411764706, -- [2]
				0.1333333333333333, -- [3]
				0.75, -- [4]
			},
		},
		["stealth"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["untrigger"] = {
			},
			["scale"] = 1,
			["anchorPoint"] = "CENTER",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["model_x"] = 0,
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["names"] = {
					"Stealth", -- [1]
				},
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
			},
			["model_z"] = -1.799999952316284,
			["advance"] = false,
			["model_path"] = "SPELLS/Sap_Impact_Chest.m2",
			["id"] = "stealth",
			["model_y"] = -0.9499999284744263,
			["frameStrata"] = 1,
			["width"] = 374.000732421875,
			["rotation"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["borderOffset"] = 5,
			["height"] = 559.0003051757813,
			["xOffset"] = 2.99957275390625,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 180,
		},
		["Totems"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Fire", -- [1]
				"Water", -- [2]
				"Air", -- [3]
				"Earth", -- [4]
			},
			["animate"] = true,
			["xOffset"] = -223.9996337890625,
			["anchorPoint"] = "CENTER",
			["border"] = "None",
			["yOffset"] = -306.0001373291016,
			["regionType"] = "dynamicgroup",
			["untrigger"] = {
			},
			["sort"] = "hybrid",
			["expanded"] = true,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "BOTTOM",
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["frameStrata"] = 1,
			["width"] = 170,
			["rotation"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["id"] = "Totems",
			["height"] = 66,
			["backgroundInset"] = 0,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sortHybridTable"] = {
				[3] = true,
				[2] = false,
			},
		},
		["Slice And Dice"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 17.00006103515625,
			["stacksFlags"] = "None",
			["yOffset"] = -93.99996948242188,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["rotateText"] = "NONE",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Slice and Dice", -- [1]
				},
			},
			["text"] = true,
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["untrigger"] = {
			},
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "%n",
			["height"] = 24,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["stacks"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_side"] = "LEFT",
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["auto"] = true,
			["texture"] = "Flat",
			["textFont"] = "Tempest",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["borderOffset"] = 5,
			["id"] = "Slice And Dice",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 243,
			["timerSize"] = 12,
			["borderInset"] = 11,
			["inverse"] = false,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
}
