
WeakAurasSaved = {
	["login_squelch_time"] = 5,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -24.000244140625,
		["width"] = 630.0003662109375,
		["height"] = 492,
		["yOffset"] = -173.0001831054688,
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
		["Rapid Fire"] = "Interface\\Icons\\Ability_Hunter_RunningShot",
		["Flame Shock"] = "Interface\\Icons\\Spell_Fire_FlameShock",
		["The Beast Within"] = "Interface\\Icons\\Ability_Hunter_BeastWithin",
		["Stealth"] = "Interface\\Icons\\Ability_Stealth",
		["Invoker's Energy"] = "Interface\\Icons\\Spell_Arcane_Arcane03",
		["Camouflage"] = "Interface\\Icons\\Ability_Hunter_Displacement",
		["Icy Veins"] = "Interface\\Icons\\Spell_Frost_ColdHearted",
		["Recuperate"] = "INTERFACE\\ICONS\\ability_rogue_recuperate",
		["Aspect of the Pack"] = "Interface\\Icons\\Ability_Mount_WhiteTiger",
		["Aspect of the Cheetah"] = "Interface\\Icons\\Ability_Mount_JungleTiger",
		["Mind-numbing Poison"] = "Interface\\Icons\\Spell_Nature_NullifyDisease",
		["Lightning Shield"] = "Interface\\Icons\\Spell_Nature_LightningShield",
		["Sap"] = "Interface\\Icons\\Ability_Sap",
		["Survivor's Bag"] = "INTERFACE\\ICONS\\inv_misc_bag_enchantedrunecloth",
		["Brain Freeze"] = "Interface\\Icons\\Ability_Mage_BrainFreeze",
		["Ascendance"] = "Interface\\Icons\\Spell_Fire_ElementalDevastation",
		["Time Warp"] = "INTERFACE\\ICONS\\ability_mage_timewarp",
		["Burst of Speed"] = "Interface\\Icons\\rogue_burstofspeed",
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
			["regionType"] = "dynamicgroup",
			["sort"] = "descending",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["space"] = 2,
			["background"] = "None",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["id"] = "Bar Timers",
			["borderOffset"] = 16,
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["stagger"] = 0,
			["frameStrata"] = 1,
			["width"] = 257,
			["rotation"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["backgroundInset"] = 0,
			["height"] = 77.99998474121094,
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
			["untrigger"] = {
			},
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
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "event",
				["subeventSuffix"] = "_CAST_START",
				["duration"] = "1",
				["event"] = "GTFO",
				["unit"] = "player",
				["alertType"] = 1,
				["names"] = {
				},
				["use_alertType"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "timed",
				["debuffType"] = "HELPFUL",
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
			["id"] = "high dmg",
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
			["untrigger"] = {
				["use_alertType"] = false,
			},
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
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"The Beast Within", -- [1]
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
			["stickyDuration"] = false,
			["barInFront"] = true,
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
					["duration_type"] = "seconds",
					["preset"] = "shrink",
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["height"] = 38,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 15,
			["borderOffset"] = 5,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["timerSize"] = 12,
			["icon_side"] = "LEFT",
			["frameStrata"] = 1,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Arial Narrow",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "New 3",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 257,
			["stacks"] = true,
			["borderInset"] = 11,
			["inverse"] = false,
			["displayTextLeft"] = "%n",
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["untrigger"] = {
			},
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
			["id"] = "Low Mana",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["percentpower_operator"] = "<=",
				["type"] = "status",
				["percentpower"] = "20",
				["unevent"] = "auto",
				["power_operator"] = "<=",
				["use_power"] = false,
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["use_percentpower"] = true,
				["powertype"] = 0,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["names"] = {
				},
				["use_unit"] = true,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
			},
			["width"] = 225.0001373291016,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 200.0000762939453,
			["rotate"] = true,
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
			["xOffset"] = -6.103515625e-005,
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
				["debuffType"] = "HELPFUL",
				["use_totemName"] = true,
				["event"] = "Totem",
				["totemName"] = "Stormlash Totem",
				["unit"] = "player",
				["unevent"] = "auto",
				["use_unit"] = true,
				["totemType"] = 4,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["use_totemType"] = true,
				["custom_hide"] = "timed",
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["height"] = 20,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
			["borderOffset"] = 5,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Stormlash Totem",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = false,
			["displayTextLeft"] = "Stormlash Totem",
			["orientation"] = "HORIZONTAL",
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
			["untrigger"] = {
				["totemType"] = 4,
			},
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
			["untrigger"] = {
			},
			["yOffset"] = -166.9999694824219,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["id"] = "Fingers of Frost",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
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
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Fingers of Frost", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["xOffset"] = 42.00006103515625,
			["font"] = "Tempest",
			["inverse"] = false,
			["stickyDuration"] = false,
			["height"] = 64,
			["icon"] = true,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
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
			["anchorPoint"] = "CENTER",
			["scale"] = 1,
			["model_x"] = 0,
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "model",
			["borderSize"] = 16,
			["yOffset"] = 180,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["model_path"] = "SPELLS/Sap_Impact_Chest.m2",
			["trigger"] = {
				["names"] = {
					"Camouflage", -- [1]
				},
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
			},
			["borderOffset"] = 5,
			["advance"] = true,
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
			["id"] = "stealth 2",
			["model_y"] = -0.9499999284744263,
			["frameStrata"] = 1,
			["width"] = 374.000732421875,
			["rotation"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["model_z"] = -1.799999952316284,
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
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderEdge"] = "None",
		},
		["New"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["yOffset"] = -224.0000610351563,
			["scale"] = 1,
			["regionType"] = "model",
			["border"] = false,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["model_x"] = -0.1499999761581421,
			["xOffset"] = -135.9998779296875,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["model_path"] = "SPELLS/BeastSoothe_State_Head.m2",
			["id"] = "New",
			["model_z"] = -0.6499999761581421,
			["advance"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["unit"] = "target",
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Sap", -- [1]
				},
			},
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 561.0003051757813,
			["rotation"] = 0,
			["borderInset"] = 11,
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
			["height"] = 468,
			["borderSize"] = 16,
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
			["borderEdge"] = "None",
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
			["xOffset"] = 5,
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
					"Aspect of the Cheetah", -- [1]
					"Aspect of the Pack", -- [2]
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
			["id"] = "Pack",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 200,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
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
			["untrigger"] = {
			},
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
			["untrigger"] = {
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = 90,
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = 32,
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
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["count"] = "1",
				["inverse"] = true,
				["countOperator"] = ">=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Deadly Poison", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
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
			["id"] = "Deadly Poison",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 64,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Ability_Rogue_DualWeild",
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
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["space"] = 2,
			["background"] = "None",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderOffset"] = 16,
			["id"] = "Spells",
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 262,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["backgroundInset"] = 0,
			["height"] = 64.00001525878906,
			["selfPoint"] = "LEFT",
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
			["sortHybridTable"] = {
				[3] = true,
				[2] = false,
			},
			["border"] = "None",
			["yOffset"] = -306.0001373291016,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["sort"] = "hybrid",
			["backgroundInset"] = 0,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
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
			["borderOffset"] = 16,
			["id"] = "Totems",
			["selfPoint"] = "BOTTOM",
			["align"] = "CENTER",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 170,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["height"] = 66,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
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
			["regionType"] = "dynamicgroup",
		},
		["stealth"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["yOffset"] = 180,
			["scale"] = 1,
			["regionType"] = "model",
			["border"] = false,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["xOffset"] = 2.99957275390625,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["model_path"] = "SPELLS/Sap_Impact_Chest.m2",
			["id"] = "stealth",
			["model_z"] = -1.799999952316284,
			["advance"] = false,
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
					"Stealth", -- [1]
				},
			},
			["model_y"] = -0.9499999284744263,
			["frameStrata"] = 1,
			["width"] = 374.000732421875,
			["rotation"] = 0,
			["borderInset"] = 11,
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
			["height"] = 559.0003051757813,
			["borderSize"] = 16,
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
			["borderEdge"] = "None",
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
			["untrigger"] = {
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = -166.0001525878906,
			["regionType"] = "icon",
			["anchorPoint"] = "CENTER",
			["xOffset"] = -42.99969482421875,
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
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Brain Freeze",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Brain Freeze", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["icon"] = true,
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Ability_Mage_FrostFireBolt",
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
			["xOffset"] = -1.8951416015625,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura21",
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["id"] = "Lightning Shield",
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
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 308,
			["rotation"] = 0,
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
			["discrete_rotation"] = 0,
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
			["untrigger"] = {
			},
		},
		["Lava Burst"] = {
			["xOffset"] = -1.48187255859375,
			["mirror"] = false,
			["untrigger"] = {
				["unit"] = "target",
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["color"] = {
				1, -- [1]
				0.2823529411764706, -- [2]
				0.1333333333333333, -- [3]
				0.75, -- [4]
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Doodad\\G_GongTroll01.wav",
					["do_sound"] = true,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura13",
			["trigger"] = {
				["unit"] = "target",
				["spellName"] = 51505,
				["type"] = "status",
				["use_health"] = false,
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["percenthealth"] = "25",
				["event"] = "Action Usable",
				["names"] = {
				},
				["health_operator"] = "<=",
				["use_spellName"] = true,
				["health"] = "25",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_percenthealth"] = true,
				["percenthealth_operator"] = "<=",
				["subeventPrefix"] = "SPELL",
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
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
			["additional_triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "target",
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
							"Flame Shock", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["id"] = "Lava Burst",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 221,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 2,
			["discrete_rotation"] = 0,
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
			["yOffset"] = 293.4360961914063,
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
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
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
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
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
			["barInFront"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
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
			["stacksFont"] = "Tempest",
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
			["timerSize"] = 12,
			["borderOffset"] = 5,
			["id"] = "Recuperate",
			["timerFont"] = "Tempest",
			["alpha"] = 1,
			["width"] = 243,
			["displayTextRight"] = "%p",
			["borderInset"] = 11,
			["inverse"] = false,
			["yOffset"] = -121,
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
			["textSize"] = 12,
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
			["parent"] = "Combo Points",
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
			["id"] = "Combo Point 5",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["combopoints"] = "5",
				["unevent"] = "auto",
				["use_unit"] = true,
				["combopoints_operator"] = ">=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["width"] = 65,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
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
			["untrigger"] = {
			},
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
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["space"] = 2,
			["background"] = "None",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderOffset"] = 16,
			["id"] = "Bars",
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 268.0001220703125,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["backgroundInset"] = 0,
			["height"] = 64.00006103515625,
			["selfPoint"] = "TOP",
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
					"Alter Time", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
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
			["displayTextLeft"] = "%n",
			["selfPoint"] = "CENTER",
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
			["textSize"] = 12,
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
			["xOffset"] = 9.0001220703125,
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
				0.4900000095367432, -- [4]
			},
			["id"] = "Alter Time",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 268,
			["stacksFont"] = "Friz Quadrata TT",
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = 254.0000610351563,
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["stickyDuration"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Earth Shock"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["parent"] = "Spells",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["untrigger"] = {
				["spellName"] = 8042,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["icon"] = true,
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Earth Shock",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["unit"] = "player",
				["names"] = {
				},
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["use_targetRequired"] = true,
				["spellName"] = 8042,
				["custom_hide"] = "timed",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["unit"] = "target",
						["remOperator"] = ">=",
						["names"] = {
							"Flame Shock", -- [1]
						},
						["rem"] = "6.5",
						["useRem"] = true,
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
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["names"] = {
							"Lightning Shield", -- [1]
						},
						["countOperator"] = "==",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 3,
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
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Sprint", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
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
			["selfPoint"] = "CENTER",
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
				["use_talent"] = false,
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
			["textSize"] = 12,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = false,
			["yOffset"] = 64,
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
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["borderOffset"] = 5,
			["id"] = "Sprint",
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
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Leeching Poison", -- [1]
					"Mind-numbing Poison", -- [2]
					"Crippling Poison", -- [3]
				},
				["debuffType"] = "HELPFUL",
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
				["use_talent"] = false,
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
			["id"] = "Crippling Poison",
			["additional_triggers"] = {
			},
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
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
			["stickyDuration"] = false,
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
			["parent"] = "Spells",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["untrigger"] = {
				["spellName"] = 51505,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["icon"] = true,
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Lava Burst Icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["unit"] = "player",
				["names"] = {
				},
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["spellName"] = 51505,
				["use_targetRequired"] = true,
				["custom_hide"] = "timed",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "auto",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["unit"] = "target",
						["remOperator"] = ">=",
						["rem"] = "3",
						["names"] = {
							"Flame Shock", -- [1]
						},
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
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
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
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
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_inverse"] = false,
				["event"] = "Totem",
				["totemName"] = "Healing Stream Totem",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["names"] = {
				},
				["use_unit"] = true,
				["totemType"] = 3,
				["use_totemName"] = true,
				["use_totemType"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["barColor"] = {
				0, -- [1]
				0.06666666666666667, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
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
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = -71.99996948242188,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
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
			["id"] = "Water",
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
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 170,
			["untrigger"] = {
				["totemType"] = 3,
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
				["use_castType"] = false,
				["sourceunit"] = "player",
				["use_status"] = false,
				["use_matchedRune"] = false,
				["ownOnly"] = true,
				["use_spell"] = true,
				["unit"] = "player",
				["use_unit"] = true,
				["remaining"] = "150",
				["names"] = {
					"Heroism", -- [1]
				},
				["use_inverse"] = false,
				["debuffType"] = "HELPFUL",
				["spellName"] = "Mirror Image",
				["use_totemType"] = true,
				["custom_hide"] = "timed",
				["spell"] = "Mirror Image",
				["type"] = "event",
				["unevent"] = "timed",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["use_source"] = false,
				["threatUnit"] = "none",
				["event"] = "Combat Log",
				["totemType"] = 1,
				["use_threatUnit"] = true,
				["use_spellName"] = true,
				["use_remaining"] = true,
				["use_sourceunit"] = true,
				["subeventPrefix"] = "SPELL",
				["remaining_operator"] = ">=",
				["duration"] = "30",
				["source"] = "Mirror Image",
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
			["icon"] = false,
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
			["xOffset"] = 9.0001220703125,
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
			["id"] = "Mirror Image",
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
			["untrigger"] = {
				["threatUnit"] = "none",
				["spellName"] = 55342,
			},
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["stickyDuration"] = false,
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
			["parent"] = "Combo Points",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = 182.5,
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
			["id"] = "Combo Point 4",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["combopoints_operator"] = ">=",
				["use_unit"] = true,
				["unevent"] = "auto",
				["combopoints"] = "4",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 65,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
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
			["untrigger"] = {
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
			["parent"] = "Combo Points",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["xOffset"] = 82.5,
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
				["custom_hide"] = "timed",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["combopoints_operator"] = ">=",
				["use_unit"] = true,
				["unevent"] = "auto",
				["combopoints"] = "2",
			},
			["selfPoint"] = "CENTER",
			["id"] = "Combo Point 2",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 65,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
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
			["yOffset"] = 0,
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
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Burst of Speed", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
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
				["use_talent"] = true,
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
			["id"] = "Burst of Speed",
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
				["debuffType"] = "HELPFUL",
				["use_totemName"] = true,
				["event"] = "Totem",
				["totemName"] = "Tremor Totem",
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["totemType"] = 2,
				["names"] = {
				},
				["unit"] = "player",
				["use_totemType"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["barColor"] = {
				0.3098039215686275, -- [1]
				0.6549019607843137, -- [2]
				0.2745098039215687, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["textSize"] = 12,
			["stickyDuration"] = false,
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
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["id"] = "Earth",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
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
						["totemType"] = 2,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["totemName"] = "Earthbind Totem",
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
						["unit"] = "player",
						["use_unit"] = true,
						["totemType"] = 2,
						["subeventSuffix"] = "_CAST_START",
						["use_totemType"] = true,
						["totemName"] = "Earth Elemental Totem",
					},
					["untrigger"] = {
						["totemType"] = 2,
					},
				}, -- [2]
			},
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 170,
			["yOffset"] = -71.99996948242188,
			["borderInset"] = 11,
			["numTriggers"] = 3,
			["barInFront"] = true,
			["orientation"] = "HORIZONTAL",
			["displayTextLeft"] = "%n",
			["parent"] = "Totems",
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
					"Time Lord", -- [1]
				},
				["custom_hide"] = "timed",
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
			["textSize"] = 12,
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
			["barInFront"] = true,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Mage Bars",
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
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
			["timerSize"] = 12,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Time Lord",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = false,
			["untrigger"] = {
			},
			["orientation"] = "HORIZONTAL",
			["height"] = 20,
			["selfPoint"] = "CENTER",
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
			["color"] = {
				0.7450980392156863, -- [1]
				0.2156862745098039, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Spells\\Strength_128",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["id"] = "Flametongue",
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
				["enchant"] = "Flametongue",
				["type"] = "status",
				["weapon"] = "main",
				["unevent"] = "auto",
				["ownOnly"] = true,
				["use_inverse"] = true,
				["event"] = "Weapon Enchant",
				["names"] = {
					"No Match Found", -- [1]
				},
				["use_enchant"] = true,
				["inverse"] = true,
				["use_weapon"] = true,
				["use_unit"] = true,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 150,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
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
			["untrigger"] = {
			},
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
			["untrigger"] = {
				["spellName"] = 117014,
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = -160.9998779296875,
			["xOffset"] = -94.0001220703125,
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
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["unit"] = "player",
				["names"] = {
				},
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["spellName"] = 117014,
				["use_targetRequired"] = true,
				["custom_hide"] = "timed",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Elemental Blast",
			["width"] = 64,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
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
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Heroism", -- [1]
				},
				["custom_hide"] = "timed",
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["height"] = 20,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
			["borderOffset"] = 5,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Heroism",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = false,
			["displayTextLeft"] = "%n",
			["orientation"] = "HORIZONTAL",
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
			["untrigger"] = {
			},
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
			["xOffset"] = -480,
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
					["sound"] = " custom",
					["sound_path"] = "Interface/AddOns/WeakAuras/PowerAurasMedia/Sounds/aggro.ogg",
					["do_custom"] = false,
				},
				["finish"] = {
					["message"] = "reads the whisper.",
					["custom"] = "MoveViewLeftStop()",
					["do_sound"] = false,
					["message_type"] = "EMOTE",
					["sound"] = "Sound\\Spells\\FireBallImpactA.wav",
					["do_custom"] = false,
					["do_message"] = false,
				},
			},
			["texture"] = "Spells\\T_Star3",
			["trigger"] = {
				["type"] = "event",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["custom_hide"] = "timed",
				["duration"] = "2",
				["event"] = "Chat Message",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Haunted", -- [1]
				},
				["unevent"] = "timed",
				["name"] = "New",
				["use_unit"] = true,
				["messageType"] = "CHAT_MSG_WHISPER",
				["unit"] = "player",
				["use_messageType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["id"] = "Incoming Whisper",
			["width"] = 200,
			["animation"] = {
				["start"] = {
					["translateType"] = "custom",
					["use_rotate"] = true,
					["use_scale"] = false,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "return function(progress, start, delta) return start + \n(progress * delta) end",
					["rotateType"] = "custom",
					["use_translate"] = true,
					["use_alpha"] = false,
					["colorA"] = 1,
					["type"] = "custom",
					["rotateFunc"] = "return function(progress, start, delta)\n  return start + (progress * delta)\nend",
					["preset"] = "spiral",
					["translateFunc"] = "return function(progress, startX, startY, deltaX, deltaY) local angle = (progress + 1) * 0.5 * math.pi return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2)) end",
					["scaley"] = 1,
					["alpha"] = 0.5600000023841858,
					["colorR"] = 1,
					["y"] = -300,
					["x"] = -600,
					["scaleFunc"] = "return function(progress, startX, startY, scaleX, scaleY) return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY)) end",
					["scaleType"] = "custom",
					["duration"] = "1",
					["rotate"] = 720,
					["scalex"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["scaleFunc"] = "return function(progress, startX, startY, scaleX, scaleY)\n  return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\nend\n",
					["use_rotate"] = true,
					["duration"] = "4",
					["rotateType"] = "straight",
					["colorG"] = 1,
					["use_translate"] = false,
					["colorB"] = 1,
					["colorA"] = 1,
					["scaleType"] = "custom",
					["rotateFunc"] = "return function(progress, start, delta)\n  return start + (progress * delta)\nend",
					["scalex"] = 1,
					["translateFunc"] = "return function(progress, startX, startY, deltaX, deltaY)\n  return startX + (progress * deltaX), startY + (progress * deltaY)\nend\n",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorR"] = 1,
					["y"] = 300,
					["x"] = 600,
					["preset"] = "orbit",
					["translateType"] = "custom",
					["use_scale"] = false,
					["rotate"] = -1440,
					["type"] = "custom",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desc"] = "Flings a spinning star across your screen to get your attention whenever you receive a whisper.",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
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
			["untrigger"] = {
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
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_totemName"] = true,
				["use_inverse"] = false,
				["event"] = "Totem",
				["totemName"] = "Capacitor Totem",
				["subeventPrefix"] = "SPELL",
				["totemType"] = 4,
				["names"] = {
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_totemType"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["barColor"] = {
				0.6901960784313725, -- [1]
				0.7215686274509804, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["textSize"] = 12,
			["stickyDuration"] = false,
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
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacks"] = true,
			["alpha"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["borderSize"] = 16,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["id"] = "Air",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
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
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_totemName"] = true,
						["event"] = "Totem",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_unit"] = true,
						["totemType"] = 4,
						["subeventSuffix"] = "_CAST_START",
						["use_totemType"] = true,
						["totemName"] = "Grounding Totem",
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
						["totemType"] = 4,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_totemType"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["totemType"] = 4,
					},
				}, -- [2]
			},
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 170,
			["yOffset"] = -71.99996948242188,
			["borderInset"] = 11,
			["numTriggers"] = 3,
			["barInFront"] = true,
			["orientation"] = "HORIZONTAL",
			["displayTextLeft"] = "%n",
			["parent"] = "Totems",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Frenzied Regeneration"] = {
			["disjunctive"] = false,
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "BOTTOMRIGHT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = -236.0000457763672,
			["regionType"] = "icon",
			["id"] = "Frenzied Regeneration",
			["numTriggers"] = 2,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_frame"] = "",
					["glow_action"] = "show",
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_frame"] = "",
					["glow_action"] = "hide",
				},
			},
			["customTextUpdate"] = "update",
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
						["power"] = "60",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_powertype"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["icon"] = true,
			["width"] = 64,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["useCount"] = true,
				["count"] = "10",
				["countOperator"] = "==",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Improved Regeneration", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
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
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["xOffset"] = 6.103515625e-005,
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Ability_BullRush",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
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
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
				["debuffType"] = "HELPFUL",
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
					"Heroism", -- [1]
				},
				["custom_hide"] = "timed",
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
			["stickyDuration"] = false,
			["displayTextLeft"] = "%n",
			["untrigger"] = {
			},
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
			["numTriggers"] = 2,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = 254.0000610351563,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
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
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["id"] = "Mage Hero",
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
			["stacksFont"] = "Friz Quadrata TT",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Time Warp", -- [1]
						},
						["unit"] = "player",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
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
			["borderInset"] = 11,
			["inverse"] = false,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["selfPoint"] = "CENTER",
			["parent"] = "Mage Bars",
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
				["useRem"] = true,
				["rem"] = "5",
				["remOperator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Invoker's Energy", -- [1]
				},
				["debuffType"] = "HELPFUL",
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
			["actions"] = {
				["start"] = {
					["sound_channel"] = "Master",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\hurricane.ogg",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_frame"] = "Evocation",
				},
			},
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
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["borderOffset"] = 5,
			["id"] = "Invocation",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 206,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["height"] = 45,
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
		["Fire Totem"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 150.0000610351563,
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["use_size"] = false,
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
						["party"] = true,
						["scenario"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["pvp"] = true,
					},
				},
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = 0.000244140625,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Fire Totem",
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
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_inverse"] = true,
				["event"] = "Totem",
				["unit"] = "player",
				["names"] = {
				},
				["totemType"] = 1,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["width"] = 143.9998779296875,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 137,
			["displayIcon"] = "Interface\\Icons\\Spell_Fire_SelfDestruct",
			["stacksPoint"] = "BOTTOMRIGHT",
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
			["parent"] = "Combo Points",
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
				["custom_hide"] = "timed",
				["combopoints"] = "3",
				["unevent"] = "auto",
				["use_unit"] = true,
				["combopoints_operator"] = ">=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["id"] = "Combo Point 2 2",
			["width"] = 65,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
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
			["yOffset"] = 0,
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
					"Icy Veins", -- [1]
				},
				["custom_hide"] = "timed",
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
			["icon"] = false,
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
			["yOffset"] = 254.0000610351563,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Mage Bars",
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
				0.5, -- [4]
			},
			["id"] = "Icy Veins",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
			["stacks"] = true,
			["borderInset"] = 11,
			["inverse"] = false,
			["barInFront"] = true,
			["orientation"] = "HORIZONTAL",
			["height"] = 20,
			["selfPoint"] = "CENTER",
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
					["type"] = "none",
					["preset"] = "shrink",
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Rapid Fire", -- [1]
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
			["selfPoint"] = "CENTER",
			["textSize"] = 15,
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
			["height"] = 38,
			["inverse"] = false,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -188.9998168945313,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["auto"] = true,
			["icon_side"] = "LEFT",
			["alpha"] = 1,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["texture"] = "Blizzard",
			["textFont"] = "Arial Narrow",
			["stacksFont"] = "Friz Quadrata TT",
			["timerSize"] = 12,
			["borderOffset"] = 5,
			["id"] = "New 3 2",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 257,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["icon"] = true,
			["orientation"] = "HORIZONTAL",
			["stickyDuration"] = false,
			["displayTextLeft"] = "%n",
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
			["yOffset"] = 0,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "event",
				["subeventSuffix"] = "_CAST_START",
				["duration"] = "1",
				["event"] = "GTFO",
				["unit"] = "player",
				["unevent"] = "timed",
				["alertType"] = 2,
				["use_alertType"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
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
			["id"] = "low damage",
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
		["New 2"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 268.0001831054688,
			["load"] = {
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_combat"] = true,
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
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = -0.99993896484375,
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
			["id"] = "New 2",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["debuffType"] = "HARMFUL",
				["inverse"] = true,
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">=",
				["names"] = {
					"Serpent Sting", -- [1]
				},
				["rem"] = "4",
				["useRem"] = true,
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 64,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_PoisonCleansingTotem",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["space"] = 2,
			["background"] = "None",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderOffset"] = 16,
			["id"] = "Mage Bars",
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 267.9999389648438,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["backgroundInset"] = 0,
			["height"] = 108.0000610351563,
			["selfPoint"] = "TOP",
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
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Nether Tempest", -- [1]
				},
				["event"] = "Health",
				["unit"] = "target",
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
			["displayTextRight"] = "%p",
			["icon_side"] = "RIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["timerSize"] = 12,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["borderOffset"] = 5,
			["id"] = "Nether Tempest",
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
			["parent"] = "Combo Points",
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
			["id"] = "Combo Point 1",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["combopoints"] = "1",
				["unevent"] = "auto",
				["use_unit"] = true,
				["combopoints_operator"] = ">=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["width"] = 65,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
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
			["xOffset"] = 32.5,
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
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["frameStrata"] = 1,
			["expanded"] = false,
			["untrigger"] = {
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
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
			["borderEdge"] = "None",
			["id"] = "Combo Points",
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
			["regionType"] = "group",
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
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["use_inverse"] = false,
				["event"] = "Totem",
				["totemName"] = "Searing Totem",
				["unit"] = "player",
				["use_totemName"] = true,
				["totemType"] = 1,
				["use_unit"] = true,
				["names"] = {
				},
				["unevent"] = "auto",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0.06274509803921569, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Totems",
			["icon"] = true,
			["displayTextLeft"] = "%n",
			["textSize"] = 12,
			["height"] = 15,
			["timerFlags"] = "None",
			["load"] = {
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Avessia",
				["difficulty"] = "lfr",
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["spec"] = {
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
			["inverse"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["barInFront"] = true,
			["untrigger"] = {
				["totemType"] = 1,
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
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
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
						["totemType"] = 1,
						["use_unit"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
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
						["totemName"] = 0,
						["subeventSuffix"] = "_CAST_START",
						["totemType"] = 1,
						["use_unit"] = true,
						["use_totemType"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["borderOffset"] = 5,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "Fire",
			["timerFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 170,
			["disjunctive"] = true,
			["borderInset"] = 11,
			["numTriggers"] = 3,
			["timer"] = true,
			["orientation"] = "HORIZONTAL",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
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
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Ascendance", -- [1]
				},
				["custom_hide"] = "timed",
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["height"] = 20,
			["numTriggers"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "aurabar",
			["stacks"] = true,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
			["borderOffset"] = 5,
			["auto"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["displayTextRight"] = "%p",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Ascendance",
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["width"] = 268,
			["borderSize"] = 16,
			["borderInset"] = 11,
			["inverse"] = false,
			["displayTextLeft"] = "%n",
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["untrigger"] = {
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Flame Shock"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
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
				["itemName"] = 0,
				["remaining_operator"] = "<=",
				["names"] = {
					"Flame Shock", -- [1]
				},
				["remaining"] = "2",
				["debuffType"] = "HARMFUL",
				["custom_hide"] = "timed",
				["use_remaining"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["spellName"] = 8050,
				["unit"] = "target",
				["event"] = "Cooldown Progress (Spell)",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["use_spellName"] = true,
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["remOperator"] = "<=",
				["rem"] = "3",
				["ownOnly"] = true,
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
			["untrigger"] = {
				["spellName"] = 8050,
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "auto",
						["debuffType"] = "HARMFUL",
						["ownOnly"] = true,
						["event"] = "Action Usable",
						["names"] = {
							"Flame Shock", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["inverse"] = true,
						["use_targetRequired"] = true,
						["unit"] = "target",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8050,
					},
					["untrigger"] = {
						["spellName"] = 8050,
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 2,
			["id"] = "Flame Shock",
			["desaturate"] = false,
			["displayIcon"] = "Interface\\Icons\\Spell_Fire_FlameShock",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
				["names"] = {
					"Slice and Dice", -- [1]
				},
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
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
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["borderOffset"] = 5,
			["id"] = "Slice And Dice",
			["timerFont"] = "Friz Quadrata TT",
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
	},
}
