-- Definition of buff impact types
VUHDO_BUFF_TARGET_SELF = 1;
VUHDO_BUFF_TARGET_SINGLE = 2;
VUHDO_BUFF_TARGET_UNIQUE = 3;
VUHDO_BUFF_TARGET_OWN_GROUP = 4;
VUHDO_BUFF_TARGET_TOTEM = 7;
VUHDO_BUFF_TARGET_STANCE = 8;
VUHDO_BUFF_TARGET_HOSTILE = 9;
VUHDO_BUFF_TARGET_RAID = 10;
VUHDO_BUFF_TARGET_ENCHANT = 11;
VUHDO_BUFF_TARGET_ENCHANT_OFF = 12;



--
VUHDO_GROUPS_BUFFS = {
	[VUHDO_BUFF_TARGET_OWN_GROUP] = true,
	[VUHDO_BUFF_TARGET_TOTEM] = true,
	[VUHDO_BUFF_TARGET_RAID] = true,
};




local GROUP_ATK_POWER = {
	VUHDO_SPELL_ID.BUFF_HORN_OF_WINTER,
	VUHDO_SPELL_ID.BUFF_BATTLE_SHOUT,
	VUHDO_SPELL_ID.BUFF_TRUESHOT_AURA
};

--[[local GROUP_ATK_SPEED = {
 ]] -- not needed yet

local GROUP_SPELL_POWER = {
	VUHDO_SPELL_ID.BUFF_ARCANE_BRILLIANCE,
	VUHDO_SPELL_ID.BUFF_DALARAN_BRILLIANCE,
	VUHDO_SPELL_ID.STILL_WATER,
	VUHDO_SPELL_ID.BURNING_WRATH,
	VUHDO_SPELL_ID.BUFF_DARK_INTENT
};

local GROUP_CRIT = {
	VUHDO_SPELL_ID.LEADER_OF_THE_PACK,
	VUHDO_SPELL_ID.TERRIFYING_ROAR,
	VUHDO_SPELL_ID.FURIOUS_HOWL,
	VUHDO_SPELL_ID.STILL_WATER,
	VUHDO_SPELL_ID.BUFF_ARCANE_BRILLIANCE,
	VUHDO_SPELL_ID.BUFF_DALARAN_BRILLIANCE,
	VUHDO_SPELL_ID.BUFF_LEGACY_OF_THE_WHITE_TIGER
};

local GROUP_MASTERY = {
	VUHDO_SPELL_ID.BUFF_BLESSING_OF_MIGHT,
	VUHDO_SPELL_ID.GRACE_OF_AIR,
	VUHDO_SPELL_ID.SPIRIT_BEAST_BLESSING,
	VUHDO_SPELL_ID.ROAR_OF_COURAGE
};


local GROUP_STATS = {
	VUHDO_SPELL_ID.BUFF_BLESSING_OF_THE_KINGS,
	VUHDO_SPELL_ID.BUFF_MARK_OF_THE_WILD,
	VUHDO_SPELL_ID.BUFF_LEGACY_OF_THE_EMPEROR,
	VUHDO_SPELL_ID.EMBRACE_OF_THE_SHALE_SPIDER
}

local GROUP_STAM = {
	VUHDO_SPELL_ID.BUFF_POWER_WORD_FORTITUDE,
	VUHDO_SPELL_ID.BLOOD_PAKT,
	VUHDO_SPELL_ID.BUFF_COMMANDING_SHOUT,
	VUHDO_SPELL_ID.QIRAJI_FORTITUDE,
	VUHDO_SPELL_ID.BUFF_DARK_INTENT
};



--
-- Buffs per Class
-- Class => BUff-disjunctive-Group => Buff-Overwriting-Group => BuffName, Target type
--
VUHDO_CLASS_BUFFS = {
	-- Priest
	["PRIEST"] = {
		[VUHDO_SPELL_ID.BUFF_POWER_WORD_FORTITUDE] = {
			{ VUHDO_SPELL_ID.BUFF_POWER_WORD_FORTITUDE, VUHDO_BUFF_TARGET_RAID, GROUP_STAM },
		},
		[VUHDO_SPELL_ID.BUFF_FEAR_WARD] = {
			{ VUHDO_SPELL_ID.BUFF_FEAR_WARD, VUHDO_BUFF_TARGET_UNIQUE },
		},
		[VUHDO_SPELL_ID.BUFF_INNER_FIRE] = {
			{ VUHDO_SPELL_ID.BUFF_INNER_FIRE, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_INNER_WILL, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.BUFF_SHADOWFIEND] = {
			{ VUHDO_SPELL_ID.BUFF_SHADOWFIEND, VUHDO_BUFF_TARGET_HOSTILE },
		},
		[VUHDO_SPELL_ID.BUFF_POWER_INFUSION] = {
			{ VUHDO_SPELL_ID.BUFF_POWER_INFUSION, VUHDO_BUFF_TARGET_UNIQUE },
		},
		[VUHDO_SPELL_ID.BUFF_VAMPIRIC_EMBRACE] = {
			{ VUHDO_SPELL_ID.BUFF_VAMPIRIC_EMBRACE, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.BUFF_LEVITATE] = {
			{ VUHDO_SPELL_ID.BUFF_LEVITATE, VUHDO_BUFF_TARGET_SINGLE },
		},
		[VUHDO_SPELL_ID.PAIN_SUPPRESSION] = {
			{ VUHDO_SPELL_ID.PAIN_SUPPRESSION, VUHDO_BUFF_TARGET_UNIQUE },
		},
		[VUHDO_SPELL_ID.BUFFC_CHAKRA] = {
			{ VUHDO_SPELL_ID.CHAKRA_CHASITISE, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.CHAKRA_SANCTUARY, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.CHAKRA_SERENITY, VUHDO_BUFF_TARGET_SELF },
		},
	},

	-- Shaman
	["SHAMAN"] = {
		[VUHDO_I18N_BUFFC_FIRE_TOTEM] = {
			{ VUHDO_SPELL_ID.BUFF_SEARING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_FIRE_ELEMENTAL_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_MAGMA_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
		},
		[VUHDO_I18N_BUFFC_AIR_TOTEM] = {
			{ VUHDO_SPELL_ID.BUFF_GROUNDING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_CAPACITOR_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_SPIRIT_LINK_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_STORMLASH_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_WINDWALK_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
		},
		[VUHDO_I18N_BUFFC_EARTH_TOTEM] = {
			{ VUHDO_SPELL_ID.BUFF_EARTHBIND_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_EARTH_ELEMENTAL_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_EARTHGRAB_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_STONE_BULWARK_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_TREMOR_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
		},
		[VUHDO_I18N_BUFFC_WATER_TOTEM] = {
			{ VUHDO_SPELL_ID.BUFF_HEALING_STREAM_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_HEALING_TIDE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			{ VUHDO_SPELL_ID.BUFF_MANA_TIDE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
		},
		[VUHDO_SPELL_ID.BUFF_MANA_TIDE_TOTEM] = {
			{ VUHDO_SPELL_ID.BUFF_MANA_TIDE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
		},
		[VUHDO_SPELL_ID.BUFF_HEROISM] = {
			{ VUHDO_SPELL_ID.BUFF_HEROISM, VUHDO_BUFF_TARGET_OWN_GROUP },
		},
		[VUHDO_SPELL_ID.BUFF_BLOODLUST] = {
			{ VUHDO_SPELL_ID.BUFF_BLOODLUST, VUHDO_BUFF_TARGET_OWN_GROUP },
		},
		[VUHDO_SPELL_ID.BUFF_EARTH_SHIELD] ={
			{ VUHDO_SPELL_ID.BUFF_EARTH_SHIELD, VUHDO_BUFF_TARGET_UNIQUE },
		},
		[VUHDO_I18N_BUFFC_WEAPON_ENCHANT] = {
			{ VUHDO_SPELL_ID.BUFF_FLAMETONGUE_WEAPON, VUHDO_BUFF_TARGET_ENCHANT },
			{ VUHDO_SPELL_ID.BUFF_ROCKBITER_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			{ VUHDO_SPELL_ID.BUFF_FROSTBRAND_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			{ VUHDO_SPELL_ID.BUFF_WINDFURY_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			{ VUHDO_SPELL_ID.BUFF_EARTHLIVING_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
		},
		[VUHDO_I18N_BUFFC_WEAPON_ENCHANT_OFF] = {
			{ VUHDO_SPELL_ID.BUFF_FLAMETONGUE_WEAPON, VUHDO_BUFF_TARGET_ENCHANT_OFF },
			{ VUHDO_SPELL_ID.BUFF_ROCKBITER_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT_OFF },
			{ VUHDO_SPELL_ID.BUFF_FROSTBRAND_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT_OFF },
			{ VUHDO_SPELL_ID.BUFF_WINDFURY_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT_OFF },
			{ VUHDO_SPELL_ID.BUFF_EARTHLIVING_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT_OFF },
		},
		[VUHDO_I18N_BUFFC_SHIELDS] = {
			{ VUHDO_SPELL_ID.BUFF_LIGHTNING_SHIELD, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_WATER_SHIELD,  VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.BUFF_ANCESTRAL_SWIFTNESS] = { -- 11
			{ VUHDO_SPELL_ID.BUFF_ANCESTRAL_SWIFTNESS, VUHDO_BUFF_TARGET_SELF },
		},
	},

	["PALADIN"] = {
		[VUHDO_I18N_BUFFC_BLESSING] = {
			{ VUHDO_SPELL_ID.BUFF_BLESSING_OF_THE_KINGS, VUHDO_BUFF_TARGET_RAID, GROUP_STATS },
			{ VUHDO_SPELL_ID.BUFF_BLESSING_OF_MIGHT, VUHDO_BUFF_TARGET_RAID, GROUP_MASTERY },
		},

		[VUHDO_I18N_BUFFC_SEAL] = {
			{ VUHDO_SPELL_ID.BUFF_SEAL_OF_RIGHTEOUSNESS, VUHDO_BUFF_TARGET_STANCE },
			{ VUHDO_SPELL_ID.BUFF_SEAL_OF_JUSTICE, VUHDO_BUFF_TARGET_STANCE },
			{ VUHDO_SPELL_ID.BUFF_SEAL_OF_INSIGHT, VUHDO_BUFF_TARGET_STANCE },
			{ VUHDO_SPELL_ID.BUFF_SEAL_OF_TRUTH, VUHDO_BUFF_TARGET_STANCE },
		},
		[VUHDO_SPELL_ID.BUFF_BEACON_OF_LIGHT] = {
			{ VUHDO_SPELL_ID.BUFF_BEACON_OF_LIGHT, VUHDO_BUFF_TARGET_UNIQUE },
		},
		[VUHDO_SPELL_ID.BUFF_RIGHTEOUS_FURY] = {
			{ VUHDO_SPELL_ID.BUFF_RIGHTEOUS_FURY, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.BUFF_INQUISITION] = {
			{ VUHDO_SPELL_ID.BUFF_INQUISITION, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.SACRED_SHIELD] = {
			{ VUHDO_SPELL_ID.SACRED_SHIELD, VUHDO_BUFF_TARGET_UNIQUE },
		},
	},

	["DRUID"] = {
		[VUHDO_SPELL_ID.BUFF_MARK_OF_THE_WILD] = {
				{ VUHDO_SPELL_ID.BUFF_MARK_OF_THE_WILD, VUHDO_BUFF_TARGET_RAID, GROUP_STATS },
		},
		[VUHDO_SPELL_ID.SYMBIOSIS] = {
				{ VUHDO_SPELL_ID.SYMBIOSIS, VUHDO_BUFF_TARGET_UNIQUE },
		},
	},

	["WARLOCK"] = {
    [VUHDO_SPELL_ID.BUFF_DARK_INTENT] = {
			{ VUHDO_SPELL_ID.BUFF_DARK_INTENT, VUHDO_BUFF_TARGET_RAID, GROUP_SPELL_POWER--[[, GROUP_STAM]] }, -- 5.2
  	},
    [VUHDO_SPELL_ID.BUFF_GRIMOIR_OF_SACRIFICE] = {
			{ VUHDO_SPELL_ID.BUFF_GRIMOIR_OF_SACRIFICE, VUHDO_BUFF_TARGET_SELF },
  	},
	},

	["MAGE"] = {
		[VUHDO_SPELL_ID.BUFF_ARCANE_BRILLIANCE] = {
			{ VUHDO_SPELL_ID.BUFF_ARCANE_BRILLIANCE, VUHDO_BUFF_TARGET_RAID, GROUP_SPELL_POWER, GROUP_CRIT },
			{ VUHDO_SPELL_ID.BUFF_DALARAN_BRILLIANCE, VUHDO_BUFF_TARGET_RAID, GROUP_SPELL_POWER, GROUP_CRIT },
		},
		[VUHDO_SPELL_ID.BUFF_ICE_BLOCK] = {
			{ VUHDO_SPELL_ID.BUFF_ICE_BLOCK, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_I18N_BUFFC_ARMOR_MAGE] = {
			{ VUHDO_SPELL_ID.BUFF_FROST_ARMOR, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_MOLTEN_ARMOR, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_MAGE_ARMOR, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.BUFF_COMBUSTION] = {
			{ VUHDO_SPELL_ID.BUFF_COMBUSTION, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.BUFF_SLOW_FALL] = {
			{ VUHDO_SPELL_ID.BUFF_SLOW_FALL, VUHDO_BUFF_TARGET_SINGLE },
		},
		[VUHDO_SPELL_ID.BUFF_INVISIBILITY] = {
			{ VUHDO_SPELL_ID.BUFF_INVISIBILITY, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.ICE_BARRIER] = {
			{ VUHDO_SPELL_ID.ICE_BARRIER, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.INCANTERS_WARD] = {
			{ VUHDO_SPELL_ID.INCANTERS_WARD, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.TEMPORAL_SHIELD] = {
			{ VUHDO_SPELL_ID.TEMPORAL_SHIELD, VUHDO_BUFF_TARGET_SELF },
		},
	},

	["DEATHKNIGHT"] = {
		[VUHDO_SPELL_ID.BUFF_HORN_OF_WINTER] = {
			{ VUHDO_SPELL_ID.BUFF_HORN_OF_WINTER , VUHDO_BUFF_TARGET_SELF, GROUP_ATK_POWER },
		},
		[VUHDO_SPELL_ID.BUFF_BONE_SHIELD] = {
			{ VUHDO_SPELL_ID.BUFF_BONE_SHIELD, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_BUFFC_PRESENCE] = {
			{ VUHDO_SPELL_ID.BUFF_BLOOD_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_FROST_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_UNHOLY_PRESENCE, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_SPELL_ID.BUFF_UNHOLY_FRENZY] = {
			{ VUHDO_SPELL_ID.BUFF_UNHOLY_FRENZY, VUHDO_BUFF_TARGET_UNIQUE },
		},
	},

	["WARRIOR"] = {
		[VUHDO_I18N_BUFFC_SHOUT] = {
			{ VUHDO_SPELL_ID.BUFF_BATTLE_SHOUT, VUHDO_BUFF_TARGET_SELF, GROUP_ATK_POWER },
			{ VUHDO_SPELL_ID.BUFF_COMMANDING_SHOUT, VUHDO_BUFF_TARGET_SELF, GROUP_STAM },
		},
		[VUHDO_SPELL_ID.BUFF_VIGILANCE] = {
			{ VUHDO_SPELL_ID.BUFF_VIGILANCE, VUHDO_BUFF_TARGET_UNIQUE },
		},
	},

	["HUNTER"] = {
		[VUHDO_SPELL_ID.BUFF_TRUESHOT_AURA] = {
			{ VUHDO_SPELL_ID.BUFF_TRUESHOT_AURA, VUHDO_BUFF_TARGET_SELF, GROUP_ATK_POWER },
		},
		[VUHDO_I18N_BUFFC_ASPECT] = {
			{ VUHDO_SPELL_ID.BUFF_ASPECT_OF_THE_HAWK, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_ASPECT_OF_THE_PACK, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_ASPECT_OF_THE_FOX, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_ASPECT_OF_THE_CEETAH, VUHDO_BUFF_TARGET_SELF },
			--{ VUHDO_SPELL_ID.BUFF_ASPECT_OF_THE_IRON_HAWK, VUHDO_BUFF_TARGET_SELF },
		},
	},

	["ROGUE"] = {
		[VUHDO_SPELL_ID.BUFF_TRICKS_OF_THE_TRADE] = {
			{ VUHDO_SPELL_ID.BUFF_TRICKS_OF_THE_TRADE, VUHDO_BUFF_TARGET_UNIQUE },
		},
		[VUHDO_I18N_LETHAL_POISONS] = {
			{ VUHDO_SPELL_ID.BUFF_DEADLY_POISON, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_WOUND_POISON, VUHDO_BUFF_TARGET_SELF },
		},
		[VUHDO_I18N_NON_LETHAL_POISONS] = {
			{ VUHDO_SPELL_ID.BUFF_CRIPPLING_POISON, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_MIND_NUMBING_POISON, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_LEECHING_POISON, VUHDO_BUFF_TARGET_SELF },
			{ VUHDO_SPELL_ID.BUFF_PARALYTIC_POISON, VUHDO_BUFF_TARGET_SELF },
		},
	},

	["MONK"] = {
		[VUHDO_I18N_BUFFC_STANCE] = {
			{ VUHDO_SPELL_ID.BUFF_STANCE_OF_THE_FIERCE_TIGER, VUHDO_BUFF_TARGET_STANCE },
			{ VUHDO_SPELL_ID.BUFF_STANCE_OF_THE_STURDY_OX, VUHDO_BUFF_TARGET_STANCE },
			{ VUHDO_SPELL_ID.BUFF_STANCE_OF_THE_WISE_SERPENT, VUHDO_BUFF_TARGET_STANCE },
		},
		[VUHDO_SPELL_ID.BUFF_LEGACY_OF_THE_EMPEROR] = {
			{ VUHDO_SPELL_ID.BUFF_LEGACY_OF_THE_EMPEROR,  VUHDO_BUFF_TARGET_RAID, GROUP_STATS },
		},
		[VUHDO_SPELL_ID.BUFF_LEGACY_OF_THE_WHITE_TIGER] = {
			{ VUHDO_SPELL_ID.BUFF_LEGACY_OF_THE_WHITE_TIGER, VUHDO_BUFF_TARGET_RAID, GROUP_CRIT },
		},
	},
};


VUHDO_CAST_ICON_DIFF = {
	[VUHDO_SPELL_ID.BUFF_EARTHLIVING_WEAPON] = "Interface\\Icons\\Spell_Shaman_GiftEarthmother",
	["OTHER"] = "Interface\\Icons\\achievement_bg_tophealer_soa",
};



VUHDO_BUFF_FILTER_COMBO_TABLE = {
	{ VUHDO_ID_ALL, VUHDO_I18N_BUFF_ALL },

	{ VUHDO_ID_MAINTANKS, VUHDO_HEADER_TEXTS[VUHDO_ID_MAINTANKS] },
	{ VUHDO_ID_MAIN_ASSISTS, VUHDO_HEADER_TEXTS[VUHDO_ID_MAIN_ASSISTS] },
	{ VUHDO_ID_PRIVATE_TANKS, VUHDO_HEADER_TEXTS[VUHDO_ID_PRIVATE_TANKS] },
	{ VUHDO_ID_SELF, VUHDO_HEADER_TEXTS[VUHDO_ID_SELF] },

	{ VUHDO_ID_GROUP_OWN, VUHDO_I18N_OWN_GROUP_LONG },

	{ VUHDO_ID_MELEE_TANK, VUHDO_HEADER_TEXTS[VUHDO_ID_MELEE_TANK] },
	{ VUHDO_ID_MELEE_DAMAGE, VUHDO_HEADER_TEXTS[VUHDO_ID_MELEE_DAMAGE] },
	{ VUHDO_ID_RANGED_DAMAGE, VUHDO_HEADER_TEXTS[VUHDO_ID_RANGED_DAMAGE] },
	{ VUHDO_ID_RANGED_HEAL, VUHDO_HEADER_TEXTS[VUHDO_ID_RANGED_HEAL] },
};
