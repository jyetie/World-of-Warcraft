
GUIS_VERSION = {
	["Initialized"] = false,
	["subversion"] = -1,
	["version"] = -1,
	["build"] = -1,
}
GUIS_DB = {
	["faq"] = {
	},
	["merchant"] = {
		["autorepair"] = true,
		["autosell"] = true,
		["guildrepair"] = true,
		["detailedreport"] = false,
	},
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
			["Main_Gizmos"] = 1,
			["Bank_Trade"] = 1,
			["Main_Sets"] = 1,
			["Bank_Misc"] = 1,
			["Main_Quest"] = 1,
			["Bank_Armor"] = 1,
			["Bank_Weapons"] = 1,
			["Bank_Gems"] = 1,
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
		["showgloss"] = 1,
		["newitemrarity"] = 1,
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
		["autorestackcrafted"] = 0,
		["showDurability"] = 1,
		["showshade"] = 1,
		["glossalpha"] = 0.5,
		["allInOne"] = false,
		["orderSort"] = 1,
		["bagContents"] = {
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
	["loot"] = {
	},
	["actionbuttons"] = {
		["shadealpha"] = 0.5,
		["shownames"] = 0,
		["showshade"] = 1,
		["glossalpha"] = 0.3333333333333333,
		["showgloss"] = 1,
		["showhotkeys"] = 0,
	},
	["status"] = {
		["showWorldScore"] = true,
		["showRepBar"] = true,
		["showXPBar"] = true,
		["showXPBarAtMax"] = false,
		["showCaptureBar"] = true,
		["showDetailedScore"] = false,
	},
	["quest"] = {
		["autoCollapseOnBoss"] = true,
		["autoCollapseWatchFrame"] = true,
		["questLogLevel"] = true,
		["rightAlignWatchFrame"] = true,
		["autoAlignWatchFrame"] = true,
	},
	["combatlog"] = {
		["autoSetOnLogin"] = true,
		["autoSetOnEnter"] = true,
		["autoSetOnCombat"] = true,
		["keepSimpleQuickButtons"] = true,
		["maintainFilter"] = true,
	},
	["skinning"] = {
		["GUIS-gUI: UISkinningRaidBrowser"] = true,
		["GUIS-gUI: UISkinningQuestLog"] = true,
		["GUIS-gUI: UISkinningTicketStatus"] = true,
		["GUIS-gUI: UISkinningLoot"] = true,
		["GUIS-gUI: UISkinningSocket"] = true,
		["GUIS-gUI: UISkinningReadyCheck"] = true,
		["GUIS-gUI: UISkinningTabard"] = true,
		["GUIS-gUI: UISkinningVoidStorage"] = true,
		["GUIS-gUI: UISkinningTalents"] = true,
		["GUIS-gUI: UISkinningOpacityFrame"] = true,
		["GUIS-gUI: UISkinningTimeManager"] = true,
		["GUIS-gUI: UISkinningCharacter"] = true,
		["GUIS-gUI: UISkinningGuildControl"] = true,
		["GUIS-gUI: UISkinningTrainer"] = true,
		["GUIS-gUI: UISkinningColorPicker"] = true,
		["GUIS-gUI: UISkinningStaticPopUps"] = true,
		["GUIS-gUI: UISkinningAuctionHouse"] = true,
		["GUIS-gUI: UISkinningKeyBinding"] = true,
		["GUIS-gUI: UISkinningWorldMap"] = true,
		["GUIS-gUI: UISkinningChat"] = true,
		["GUIS-gUI: UISkinningTutorial"] = true,
		["GUIS-gUI: UISkinningDungeonFinder"] = true,
		["GUIS-gUI: UISkinningGlyph"] = true,
		["GUIS-gUI: UISkinningGuildBank"] = true,
		["GUIS-gUI: UISkinningRollPoll"] = true,
		["GUIS-gUI: UISkinningPetition"] = true,
		["GUIS-gUI: UISkinningDressingRoom"] = true,
		["GUIS-gUI: UISkinningCalendar"] = true,
		["GUIS-gUI: UISkinningZoneMap"] = true,
		["GUIS-gUI: UISkinningRaidFinder"] = true,
		["GUIS-gUI: UISkinningGuildInvite"] = true,
		["GUIS-gUI: UISkinningBGScore"] = true,
		["GUIS-gUI: UISkinningBlizzardHelp"] = true,
		["GUIS-gUI: UISkinningPvP"] = true,
		["GUIS-gUI: UISkinningWatchFrame"] = true,
		["GUIS-gUI: UISkinningMerchant"] = true,
		["GUIS-gUI: UISkinningMail"] = true,
		["GUIS-gUI: UISkinningGuild"] = true,
		["GUIS-gUI: UISkinningArcheology"] = true,
		["GUIS-gUI: UISkinningMacro"] = true,
		["GUIS-gUI: UISkinningStackSplit"] = true,
		["GUIS-gUI: UISkinningGuildFinder"] = true,
		["GUIS-gUI: UISkinningAchievementPopup"] = true,
		["GUIS-gUI: UISkinningTrade"] = true,
		["GUIS-gUI: UISkinningAutoComplete"] = true,
		["GUIS-gUI: UISkinningTransmogrification"] = true,
		["GUIS-gUI: UISkinningFriends"] = true,
		["GUIS-gUI: UISkinningAchievement"] = true,
		["GUIS-gUI: UISkinningGreeting"] = true,
		["GUIS-gUI: UISkinningInspect"] = true,
		["GUIS-gUI: UISkinningGuildRegistrar"] = true,
		["GUIS-gUI: UISkinningDebugTools"] = true,
		["GUIS-gUI: UISkinningItemText"] = true,
		["GUIS-gUI: UISkinningBlizzardOptionsMenu"] = true,
		["GUIS-gUI: UISkinningReforge"] = true,
		["GUIS-gUI: UISkinningGameMenu"] = true,
		["GUIS-gUI: UISkinningRaid"] = true,
		["GUIS-gUI: UISkinningGhostFrame"] = true,
		["GUIS-gUI: UISkinningBarberShop"] = true,
		["GUIS-gUI: UISkinningQuest"] = true,
		["GUIS-gUI: UISkinningTradeSkill"] = true,
		["GUIS-gUI: UISkinningSpellbook"] = true,
		["GUIS-gUI: UISkinningGossip"] = true,
		["GUIS-gUI: UISkinningDungeonJournal"] = true,
		["GUIS-gUI: UISkinningMovePad"] = true,
		["GUIS-gUI: UISkinningTaxi"] = true,
		["zoneMap"] = {
			["pos"] = {
				"CENTER", -- [1]
				"UIParent", -- [2]
				"CENTER", -- [3]
				0, -- [4]
				0, -- [5]
			},
		},
	},
	["error"] = {
	},
	["tooltip"] = {
		["showrealm"] = 1,
		["showhealth"] = 1,
		["hidewhilecombat"] = 0,
		["userpos"] = {
			"BOTTOMRIGHT", -- [1]
			"UIParent", -- [2]
			"BOTTOMRIGHT", -- [3]
			-8, -- [4]
			110, -- [5]
		},
		["anchortocursor"] = 0,
		["showtitle"] = 1,
	},
	["castbars"] = {
		["showTargetBar"] = false,
		["pet"] = {
			["size"] = {
				120, -- [1]
				16, -- [2]
			},
			["pos"] = {
				"TOPLEFT", -- [1]
				{
					["firstTimeLoaded"] = 1,
					[0] = nil --[[ skipped userdata ]],
				}, -- [2]
				"BOTTOM", -- [3]
				-77, -- [4]
				242, -- [5]
			},
		},
		["player"] = {
			["size"] = {
				220, -- [1]
				28, -- [2]
			},
			["pos"] = {
				"BOTTOM", -- [1]
				{
					["firstTimeLoaded"] = 1,
					[0] = nil --[[ skipped userdata ]],
				}, -- [2]
				"BOTTOM", -- [3]
				19, -- [4]
				250, -- [5]
			},
		},
		["showPetBar"] = true,
		["showPlayerBar"] = true,
		["target"] = {
			["size"] = {
				180, -- [1]
				22, -- [2]
			},
			["pos"] = {
				"BOTTOMLEFT", -- [1]
				{
					["firstTimeLoaded"] = 1,
					[0] = nil --[[ skipped userdata ]],
				}, -- [2]
				"CENTER", -- [3]
				60, -- [4]
				48, -- [5]
			},
		},
		["showFocusBar"] = false,
		["focus"] = {
			["size"] = {
				120, -- [1]
				16, -- [2]
			},
			["pos"] = {
				"TOPLEFT", -- [1]
				{
					["firstTimeLoaded"] = 1,
					[0] = nil --[[ skipped userdata ]],
				}, -- [2]
				"CENTER", -- [3]
				110, -- [4]
				40, -- [5]
			},
		},
		["showTradeSkill"] = true,
	},
	["worldmap"] = {
		["showCoords"] = true,
	},
	["core"] = {
		["useFullScreenLogo"] = false,
		["useFullScreenFade"] = true,
	},
	["unitframes"] = {
		["focusButton"] = 1,
		["focusKey"] = 1,
		["loadmaintankframes"] = true,
		["autoSpec"] = true,
		["loadclassbar"] = true,
		["loadpartyframes"] = true,
		["showPlayer"] = true,
		["showDruid"] = true,
		["loadarenaframes"] = true,
		["loadraidpetframes"] = false,
		["showPower"] = true,
		["loadraidframes"] = true,
		["showHealth"] = true,
		["loadpartypetframes"] = false,
		["showGridIndicators"] = true,
		["shiftToFocus"] = true,
		["loadbossframes"] = true,
		["useTargetAuraFilter"] = true,
		["showRaidFramesInParty"] = false,
		["showPartyPortraits"] = true,
		["showGridFramesAlways"] = true,
		["show10pAuras"] = true,
		["showPlayerAuras"] = true,
		["showExtraClassBarAlways"] = false,
		["showClassBar"] = true,
		["useGridFrames"] = true,
		["showPlayerPortrait"] = true,
		["showTargetPortrait"] = true,
		["showTargetAuras"] = true,
		["desaturateNonPlayerAuras"] = true,
		["showExtraClassBar"] = true,
	},
	["grouptools"] = {
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
	["nameplates"] = {
		["autoQuest"] = true,
		["enemyOnlyInCombat"] = false,
		["showMaxLevel"] = 0,
		["showNames"] = 1,
		["showComboPoints"] = 1,
		["showEnemy"] = true,
		["friendlyOnlyInCombat"] = true,
		["useBlackList"] = true,
		["autoSelect"] = true,
		["showFriendly"] = false,
		["showLevel"] = 1,
	},
	["auras"] = {
		["glossalpha"] = 0.3333333333333333,
		["showCooldownSpiral"] = false,
		["showshade"] = true,
		["showTimeText"] = true,
		["showgloss"] = true,
		["shadealpha"] = 0.5,
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
		["GUIS-gUI: UnitFramesBoss"] = 1,
		["GUIS-gUI: UnitFramesRaid"] = 1,
		["GUIS-gUI: Castbars"] = 1,
		["GUIS-gUI: UISkinning"] = 1,
		["GUIS-gUI: UnitFramesArena"] = 1,
		["GUIS-gUI: Status"] = 1,
		["GUIS-gUI: Bags"] = 1,
		["GUIS-gUI: ActionBars"] = 1,
		["GUIS-gUI: UnitFramesParty"] = 1,
		["GUIS-gUI: Combat"] = 1,
		["GUIS-gUI: UnitFrames"] = 1,
		["GUIS-gUI: Chat"] = 1,
		["GUIS-gUI: Tooltip"] = 1,
		["GUIS-gUI: UIError"] = 1,
		["GUIS-gUI: Quest"] = 1,
		["GUIS-gUI: Loot"] = 1,
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
