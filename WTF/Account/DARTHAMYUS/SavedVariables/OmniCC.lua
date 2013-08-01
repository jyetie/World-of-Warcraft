
OmniCC4Config = {
	["groupSettings"] = {
		["base"] = {
			["enabled"] = true,
			["fontFace"] = "Fonts\\ARIALN.ttf",
			["styles"] = {
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.5,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["seconds"] = {
					["a"] = 1,
					["r"] = 0.9686274509803922,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 0.9254901960784314,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 0.2666666666666667,
				},
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 0.75,
					["g"] = 0.7,
					["b"] = 0.7,
				},
			},
			["effect"] = "none",
			["scaleText"] = true,
			["mmSSDuration"] = 0,
			["anchor"] = "CENTER",
			["spiralOpacity"] = 1,
			["minDuration"] = 3,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.5,
			["minEffectDuration"] = 5,
			["yOff"] = 0,
			["fontSize"] = 18,
		},
		["buffs"] = {
			["enabled"] = true,
			["fontFace"] = "Interface\\Addons\\Fonter\\Fonts\\EU\\Tempest.ttf",
			["fontSize"] = 18,
			["effect"] = "none",
			["yOff"] = 0,
			["minEffectDuration"] = 5,
			["minSize"] = 0.5,
			["spiralOpacity"] = 1,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 0,
			["minDuration"] = 3,
			["styles"] = {
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 0.75,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.5,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 0.9254901960784314,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 0.2666666666666667,
				},
				["seconds"] = {
					["a"] = 1,
					["r"] = 0.9686274509803922,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
			},
		},
	},
	["version"] = "5.3.1",
	["groups"] = {
		{
			["id"] = "buffs",
			["rules"] = {
				"Dalaran Brilliance", -- [1]
				"buffs", -- [2]
			},
			["enabled"] = true,
		}, -- [1]
	},
	["engine"] = "AniUpdater",
}
