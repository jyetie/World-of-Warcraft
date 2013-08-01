
GUIS_VERSION = {
	["Initialized"] = true,
	["subversion"] = 0,
	["version"] = 2,
	["build"] = 342,
}
GUIS_DB = {
	["combat"] = {
		["showHealerThreat"] = false,
		["showFocusThreat"] = true,
		["minTime"] = 60,
		["showDPSVerboseReport"] = true,
		["scrollingText"] = true,
		["showPvPDPS"] = false,
		["threat"] = true,
		["showSoloThreat"] = false,
		["showSoloDPS"] = false,
		["minDPS"] = 1000,
		["dps"] = true,
		["showPvPThreat"] = false,
		["showWarnings"] = true,
	},
	["bags"] = {
		["shadealpha"] = 0.5,
		["scale"] = 1,
		["bagDisplay"] = {
			["Main_Misc"] = 1,
			["Bank_Consumables"] = 1,
			["Bank_Quest"] = 1,
			["Bank_Gizmos"] = 1,
			["Main_NewItems"] = 1,
			["Main_Trade"] = 1,
			["Main_Junk"] = 1,
			["Bank_Glyphs"] = 1,
			["Main_Armor"] = 1,
			["Main_Weapons"] = 1,
			["Main_Consumables"] = 1,
			["Main_Glyphs"] = 1,
			["Bank_Sets"] = 1,
			["Bank_Gems"] = 1,
			["Bank_Trade"] = 1,
			["Main_Quest"] = 1,
			["Bank_Misc"] = 1,
			["Main_Sets"] = 1,
			["Bank_Armor"] = 1,
			["Bank_Weapons"] = 1,
			["Main_Gizmos"] = 1,
			["Main_Gems"] = 1,
		},
		["compressemptyspace"] = 1,
		["locked"] = 1,
		["points"] = {
			["Main"] = {
				"BOTTOMRIGHT", -- [1]
				"UIParent", -- [2]
				"BOTTOMRIGHT", -- [3]
				-6, -- [4]
				170, -- [5]
			},
			["Bank"] = {
				"TOPLEFT", -- [1]
				"UIParent", -- [2]
				"TOPLEFT", -- [3]
				6, -- [4]
				-6, -- [5]
			},
		},
		["colorNoEquip"] = 1,
		["bagWidth"] = 9,
		["buttonSize"] = 29,
		["autorestack"] = 0,
		["showDurability"] = 1,
		["newitemrarity"] = 1,
		["showgloss"] = 1,
		["autorestackcrafted"] = 0,
		["showshade"] = 1,
		["newItemDisplay"] = {
			["Main_Armor"] = true,
			["Main_Weapons"] = true,
			["Main_Consumables"] = true,
			["Main_Glyphs"] = true,
			["Main_Trade"] = true,
			["Main_Junk"] = true,
			["Main_Gizmos"] = true,
			["Main_Quest"] = true,
			["Main_Misc"] = true,
			["Main_Gems"] = true,
		},
		["glossalpha"] = 0.5,
		["allInOne"] = false,
		["orderSort"] = 1,
		["bagContents"] = {
			[42944] = {
				[0] = true,
			},
			[65325] = {
				[58635136] = true,
			},
			[65281] = {
				[36913664] = true,
			},
			[5976] = {
				[0] = true,
			},
			[44091] = {
				[0] = true,
			},
			[2976] = {
				[2116516224] = true,
			},
			[65307] = {
				[624724224] = true,
			},
			[14589] = {
				[1563928448] = true,
			},
			[65330] = {
				[957058816] = true,
			},
			[65286] = {
				[1604020736] = true,
			},
			[65319] = {
				[571102592] = true,
			},
		},
		["scannedSinceReset"] = false,
	},
	["panels"] = {
		["showBottomLeft"] = true,
		["showBottomRight"] = true,
		["silverThreshold"] = 10000000,
		["showWorldLatency"] = true,
		["hideCopper"] = true,
		["trackedCurrencies"] = {
		},
		["copperThreshold"] = 1000000,
		["showRealmLatency"] = true,
		["hideSilver"] = true,
		["showFPS"] = true,
	},
	["minimap"] = {
		["showInstanceDifficultyOverlay"] = true,
		["useMouseWheelZoom"] = true,
		["showMiddleClickMenu"] = true,
		["showCoordinates"] = true,
		["showClock"] = true,
	},
	["core"] = {
		["useFullScreenLogo"] = false,
		["useFullScreenFade"] = true,
	},
	["loot"] = {
	},
	["chat"] = {
		["useLootFrame"] = true,
		["autoAlignLoot"] = true,
		["enableWhisperSound"] = true,
		["useIconsInBubbles"] = true,
		["timeStampFormat"] = "%H:%M",
		["autoAlignChat"] = true,
		["easyChatInit"] = false,
		["autoSizeLoot"] = true,
		["autoSizeMain"] = true,
		["removeBrackets"] = true,
		["useIcons"] = true,
		["autoAlignMain"] = true,
		["useTimeStamps"] = true,
		["collapseBubbles"] = true,
		["abbreviateChannels"] = true,
		["abbreviateStrings"] = true,
		["useTimeStampsInLoot"] = false,
		["timeStampColor"] = {
			0.6, -- [1]
			0.6, -- [2]
			0.6, -- [3]
		},
	},
	["auras"] = {
		["glossalpha"] = 0.3333333333333333,
		["showCooldownSpiral"] = false,
		["showshade"] = true,
		["showTimeText"] = true,
		["showgloss"] = true,
		["shadealpha"] = 0.5,
	},
	["worldmap"] = {
		["showCoords"] = true,
	},
	["load"] = {
		["GUIS-gUI: UnitFramesMainTank"] = 1,
		["GUIS-gUI: GroupTools"] = 1,
		["GUIS-gUI: ActionButtons"] = 1,
		["GUIS-gUI: UIPanels"] = 1,
		["GUIS-gUI: Nameplates"] = 1,
		["GUIS-gUI: Auras"] = 1,
		["GUIS-gUI: Minimap"] = 1,
		["GUIS-gUI: CombatLog"] = 1,
		["GUIS-gUI: Loot"] = 1,
		["GUIS-gUI: UnitFramesBoss"] = 1,
		["GUIS-gUI: Castbars"] = 1,
		["GUIS-gUI: Tooltip"] = 1,
		["GUIS-gUI: UnitFramesRaid"] = 1,
		["GUIS-gUI: UISkinning"] = 1,
		["GUIS-gUI: Status"] = 1,
		["GUIS-gUI: ActionBars"] = 1,
		["GUIS-gUI: UnitFramesParty"] = 1,
		["GUIS-gUI: Combat"] = 1,
		["GUIS-gUI: UnitFrames"] = 1,
		["GUIS-gUI: Chat"] = 1,
		["GUIS-gUI: UIError"] = 1,
		["GUIS-gUI: Bags"] = 1,
		["GUIS-gUI: Quest"] = 1,
		["GUIS-gUI: UnitFramesArena"] = 1,
	},
	["actionbars"] = {
		["showbar_totem"] = 1,
		["buttonSize"] = 29,
		["showbar_pet"] = 1,
		["layout"] = 1,
		["showbar_5"] = 0,
		["lockActionBars"] = 1,
		["showbar_3"] = 1,
		["showbar_micro"] = 0,
		["showbar_2"] = 1,
		["showbar_4"] = 0,
		["showbar_shift"] = 1,
	},
}
