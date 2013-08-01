
SexyCooldownDB = {
	["global"] = {
		["dbVersion"] = 3,
	},
	["profileKeys"] = {
		["Flora - Bloodhoof"] = "Jyetie - Bloodhoof",
		["Roslyn - Wyrmrest Accord"] = "Roslyn - Wyrmrest Accord",
		["Margot - Crushridge"] = "Margot - Crushridge",
		["Abryn - Wyrmrest Accord"] = "Abryn - Wyrmrest Accord",
		["Zaeliana - Bronzebeard"] = "Zaeliana - Bronzebeard",
		["Alythe - Bloodhoof"] = "Jyetie - Bloodhoof",
		["Vezeri - Bloodhoof"] = "Jyetie - Bloodhoof",
		["Rhosie - Bloodhoof"] = "Jyetie - Bloodhoof",
		["Renevie - Moon Guard"] = "Jyetie - Bloodhoof",
		["Glitterglade - Bloodhoof"] = "Glitterglade - Bloodhoof",
		["Amazy - Bloodhoof"] = "Jyetie - Bloodhoof",
		["Zalizia - Maelstrom"] = "Zalizia - Maelstrom",
		["Tarley - Bloodhoof"] = "Jyetie - Bloodhoof",
		["Avessia - Bloodhoof"] = "Avessia - Bloodhoof",
		["Greyjoy - Crushridge"] = "Greyjoy - Crushridge",
		["Vendrelia - Earthen Ring"] = "Vendrelia - Earthen Ring",
		["Eloisa - Bloodhoof"] = "Eloisa - Bloodhoof",
		["Jyetie - Bloodhoof"] = "Jyetie - Bloodhoof",
	},
	["profiles"] = {
		["Flora - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["bar"] = {
						["y"] = -329.9999923706055,
						["x"] = 136,
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 449.9999084472656,
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["blacklist"] = {
					},
				}, -- [1]
			},
		},
		["Roslyn - Wyrmrest Accord"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["fontColor"] = {
						},
						["border"] = "None",
						["width"] = 450,
						["y"] = 387,
						["x"] = -562.0000152587891,
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.99996185302734,
						["backgroundColor"] = {
						},
						["texture"] = "Empty",
					},
				}, -- [1]
			},
		},
		["Margot - Crushridge"] = {
			["bars"] = {
				{
					["events"] = {
						["SPELL_COOLDOWN"] = true,
						["INTERNAL_ITEM_COOLDOWN"] = false,
						["MY_TARGET_BUFFS"] = false,
						["PET_SPELL_COOLDOWN"] = false,
						["MY_BUFFS_ON_ME"] = true,
						["ITEM_COOLDOWN"] = false,
						["MY_DEBUFFS"] = false,
						["INTERNAL_SPELL_COOLDOWN"] = true,
					},
					["blacklist"] = {
					},
					["eventColors"] = {
						["MY_BUFFS_ON_ME"] = {
							["a"] = 1,
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
						["BUFFS_ON_ME"] = {
							["a"] = 1,
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["icon"] = {
						["showStacks"] = true,
						["timeAnchor"] = "BOTTOMLEFT",
						["border"] = "None",
						["sizeOffset"] = -2,
						["fontsize"] = 12,
						["borderColor"] = {
						},
						["borderInset"] = 3,
						["borderSize"] = 4,
						["fontColor"] = {
						},
						["font"] = "Accidental Presidency",
					},
					["bar"] = {
						["timingDisplayFormat"] = "LITERAL",
						["border"] = "None",
						["time_max"] = 60,
						["flexible"] = false,
						["borderColor"] = {
						},
						["inactiveAlpha"] = 0,
						["backgroundColor"] = {
							["a"] = 0.3600000143051148,
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
						},
						["texture"] = "ElvUI Norm",
						["y"] = -378.4999771118164,
						["width"] = 735,
						["maxDuration"] = 60,
						["x"] = 10.001220703125,
						["customTimings"] = "1, 5, 10, 15,",
						["advancedOptions"] = true,
						["height"] = 32,
						["lock"] = true,
						["fontColor"] = {
							["a"] = 0.2900000214576721,
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
						["name"] = "Bar 0",
					},
				}, -- [1]
				{
					["events"] = {
						["MY_DEBUFFS"] = true,
						["INTERNAL_ITEM_COOLDOWN"] = false,
						["PET_SPELL_COOLDOWN"] = false,
						["INTERNAL_SPELL_COOLDOWN"] = false,
						["SPELL_COOLDOWN"] = false,
						["ITEM_COOLDOWN"] = false,
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["sizeOffset"] = 15,
						["fontColor"] = {
						},
						["borderColor"] = {
						},
						["borderSize"] = 15,
						["border"] = "None",
						["borderInset"] = 2,
					},
					["bar"] = {
						["time_max"] = 15,
						["fontColor"] = {
						},
						["advancedOptions"] = true,
						["y"] = -346.5000457763672,
						["height"] = 10.00002002716065,
						["border"] = "None",
						["width"] = 327,
						["maxDuration"] = 15,
						["x"] = 8.0001220703125,
						["name"] = "buffs",
						["borderColor"] = {
							["a"] = 0.8500000089406967,
							["r"] = 0.3019607843137255,
							["g"] = 0.5215686274509804,
							["b"] = 1,
						},
						["inactiveAlpha"] = 0,
						["lock"] = true,
						["backgroundColor"] = {
							["a"] = 0,
							["r"] = 0.2,
							["g"] = 0.2705882352941176,
							["b"] = 0.6784313725490196,
						},
						["texture"] = "Empty",
					},
				}, -- [2]
			},
		},
		["Abryn - Wyrmrest Accord"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["y"] = -196.0001068115234,
						["x"] = -9.00006103515625,
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Zaeliana - Bronzebeard"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["bar"] = {
						["y"] = -213.4999542236328,
						["x"] = -54.99993896484375,
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 25.99995231628418,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 342.0002746582031,
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["blacklist"] = {
					},
				}, -- [1]
			},
		},
		["Alythe - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["blacklist"] = {
					},
				}, -- [1]
			},
		},
		["Vezeri - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Rhosie - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["y"] = 383,
						["x"] = 223.000244140625,
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.99996185302734,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 449.9999084472656,
					},
				}, -- [1]
			},
		},
		["Renevie - Moon Guard"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Glitterglade - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["blacklist"] = {
					},
				}, -- [1]
			},
		},
		["Zalizia - Maelstrom"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Amazy - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Vendrelia - Earthen Ring"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Default"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["bar"] = {
						["fontColor"] = {
						},
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["backgroundColor"] = {
						},
						["advancedOptions"] = true,
						["width"] = 450,
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["blacklist"] = {
					},
				}, -- [1]
			},
		},
		["Avessia - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["bar"] = {
						["fontColor"] = {
						},
						["time_compression"] = 0.41,
						["borderColor"] = {
						},
						["border"] = "None",
						["width"] = 623.0003051757813,
						["y"] = -376.4999771118164,
						["x"] = 0.000244140625,
						["name"] = "Bar 0",
						["lock"] = true,
						["height"] = 29.00004768371582,
						["time_max"] = 60,
						["backgroundColor"] = {
							["a"] = 0.1600000262260437,
							["b"] = 0,
							["g"] = 0,
							["r"] = 0,
						},
						["texture"] = "Armory",
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["blacklist"] = {
					},
				}, -- [1]
			},
		},
		["Greyjoy - Crushridge"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Jyetie - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
						["MY_DEBUFFS"] = true,
						["INTERNAL_ITEM_COOLDOWN"] = false,
						["PET_SPELL_COOLDOWN"] = false,
						["INTERNAL_SPELL_COOLDOWN"] = false,
						["ITEM_COOLDOWN"] = false,
						["SPELL_COOLDOWN"] = false,
					},
					["bar"] = {
						["orientation"] = "LEFT_TO_RIGHT",
						["backgroundColor"] = {
							["a"] = 0,
							["b"] = 0.6784313725490196,
							["g"] = 0.2705882352941176,
							["r"] = 0.2,
						},
						["fontColor"] = {
						},
						["time_max"] = 15,
						["inactiveAlpha"] = 0,
						["lock"] = true,
						["border"] = "None",
						["width"] = 327,
						["y"] = -272.0003051757813,
						["x"] = -12.00006103515625,
						["name"] = "buffs",
						["borderColor"] = {
							["a"] = 0.8500000089406967,
							["b"] = 1,
							["g"] = 0.5215686274509804,
							["r"] = 0.3019607843137255,
						},
						["height"] = 10.00002002716065,
						["maxDuration"] = 15,
						["advancedOptions"] = true,
						["texture"] = "Flat",
					},
					["eventColors"] = {
					},
					["icon"] = {
						["sizeOffset"] = 15,
						["fontColor"] = {
						},
						["borderColor"] = {
						},
						["borderInset"] = 2,
						["border"] = "None",
						["borderSize"] = 15,
					},
					["blacklist"] = {
					},
				}, -- [1]
				{
					["events"] = {
						["MY_BUFFS_ON_ME"] = true,
						["BUFFS_ON_ME"] = true,
					},
					["bar"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
							["a"] = 0,
							["b"] = 1,
							["g"] = 0.5215686274509804,
							["r"] = 0.3019607843137255,
						},
						["height"] = 30.99999046325684,
						["width"] = 618.9999389648438,
						["y"] = -377.0001449584961,
						["x"] = -0.00018310546875,
						["name"] = "Bar 1",
						["lock"] = true,
						["inactiveAlpha"] = 0,
						["time_max"] = 60,
						["backgroundColor"] = {
							["a"] = 0,
							["b"] = 0.6784313725490196,
							["g"] = 0.2705882352941176,
							["r"] = 0.2,
						},
						["maxDuration"] = 60,
					},
					["eventColors"] = {
						["BUFFS_ON_ME"] = {
							["a"] = 1,
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["blacklist"] = {
					},
				}, -- [2]
			},
		},
		["Eloisa - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
		["Tarley - Bloodhoof"] = {
			["bars"] = {
				{
					["events"] = {
					},
					["blacklist"] = {
					},
					["eventColors"] = {
					},
					["icon"] = {
						["fontColor"] = {
						},
						["borderColor"] = {
						},
					},
					["bar"] = {
						["name"] = "Bar 0",
						["borderColor"] = {
						},
						["height"] = 32.9999885559082,
						["fontColor"] = {
						},
						["backgroundColor"] = {
						},
						["width"] = 450,
					},
				}, -- [1]
			},
		},
	},
}
