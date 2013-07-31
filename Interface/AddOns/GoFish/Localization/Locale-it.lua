--[[--------------------------------------------------------------------
	GoFish
	Click-cast fishing and enhanced fishing sounds.
	Copyright (c) 2013 Phanx <addons@phanx.net>. All rights reserved.
	See the accompanying README and LICENSE files for more information.
	http://www.wowinterface.com/downloads/info22270-GoFish.html
	http://www.curse.com/addons/wow/gofish
----------------------------------------------------------------------]]

if GetLocale() ~= "itIT" then return end
local _, ns = ...
local L, F = ns.L, ns.F

------------------------------------------------------------------------

--L.FishingModeOff = "Fishing mode {ON}"
--L.FishingModeOn = "Fishing mode {OFF}"
--L.ToggleFishingMode = "Toggle fishing mode"

--L.ActivateOnMouseover = "Activate when mousing over a fish pool"
--L.ActivateOnMouseover_Tooltip = "Automatically turn on fishing mode when you mouse over a fish poo--L. When activated this way, fishing mode is disabled after 10 seconds if you don't cast."
--L.ActivateOnEquip = "Activate when equipping a fishing pole"
--L.ActivateOnEquip_Tooltip = "Automatically turn on fishing mode while you have a fishing pole equipped."
--L.EnhanceSounds = "Enhance sound effects while fishing"
--L.EnhanceSounds_Tooltip = "To better hear the fishing bobber splash, turn Sounds up, and Music and Ambience down. Your normal sound levels are restored after fishing."
--L.MasterVolume_Tooltip = "Adjusts the master volume while fishing."
--L.SFXVolume_Tooltip = "Adjusts the sound effect volume while fishing."
--L.MusicVolume_Tooltip = "Adjusts the music volume while fishing."
--L.AmbienceVolume_Tooltip = "Adjusts the ambient sound volume while fishing."

------------------------------------------------------------------------

--F["Abundant Bloodsail Wreckage"] = ""
--F["Abundant Firefin Snapper School"] = ""
--F["Abundant Oily Blackmouth School"] = ""
--F["Albino Cavefish School"] = ""
--F["Algaefin Rockfish School"] = ""
--F["Blackbelly Mudfish School"] = ""
--F["Bloodsail Wreckage"] = ""
F["Bloodsail Wreckage Pool"] = "Rottami dei Velerosse"
--F["Bluefish School"] = ""
F["Borean Man O' War School"] = "Banco di Meduse Boreali"
--F["Brackish Mixed School"] = ""
--F["Brew Frenzied Emperor Salmon"] = ""
--F["Crane Yolk Pool"] = ""
--F["Crowded Redbelly Mandarin"] = ""
--F["Deep Sea Monsterbelly School"] = ""
--F["Deepsea Sagefish School"] = ""
F["Dragonfin Angelfish School"] = "Banco di Pesci Angelo Pinnadrago"
--F["Emperor Salmon School"] = ""
F["Fangtooth Herring School"] = "Banco di Aringhe Zannute"
--F["Fathom Eel Swarm"] = ""
--F["Feltail School"] = ""
--F["Firefin Snapper School"] = ""
--F["Floating Debris"] = ""
--F["Floating Debris Pool"] = ""
--F["Floating Shipwreck Debris"] = ""
F["Floating Wreckage"] = "Rottami Galleggianti"
--F["Floating Wreckage Pool"] = ""
--F["Giant Mantis Shrimp Swarm"] = ""
--F["Glacial Salmon School"] = ""
F["Glassfin Minnow School"] = "Banco di Pesci di Vetro"
--F["Glimmering Jewel Danio Pool"] = ""
--F["Glowing Jade Lungfish"] = ""
F["Golden Carp School"] = "Banco di Carpe Dorate"
F["Greater Sagefish School"] = "Banco di Gran Pescisalvia"
--F["Highland Guppy School"] = ""
--F["Highland Mixed School"] = ""
F["Imperial Manta Ray School"] = "Banco di Mante Imperiali"
--F["Jade Lungfish School"] = ""
--F["Jewel Danio School"] = ""
--F["Krasarang Paddlefish School"] = ""
--F["Lesser Firefin Snapper School"] = ""
--F["Lesser Floating Debris"] = ""
--F["Lesser Oily Blackmouth School"] = ""
--F["Lesser Sagefish School"] = ""
--F["Mixed Ocean School"] = ""
--F["Moonglow Cuttlefish School"] = ""
--F["Mountain Trout School"] = ""
--F["Muddy Churning Water"] = ""
--F["Mudfish School"] = ""
F["Musselback Sculpin School"] = "Banco di Dragonetti"
--F["Mysterious Whirlpool"] = ""
F["Nettlefish School"] = "Banco di Ragnoli"
--F["Oil Spill"] = ""
F["Oily Blackmouth School"] = "Banco di Boccanera Oleosi"
--F["Patch of Elemental Water"] = ""
--F["Pool of Blood"] = ""
--F["Pool of Fire"] = ""
--F["Pure Water"] = ""
F["Redbelly Mandarin School"] = "Banco di Panciarossa Mandarini"
F["Reef Octopus Swarm"] = "Banco di Polpi di Scogliera"
F["Sagefish School"] = "Banco di Pescisalvia"
--F["School of Darter"] = ""
--F["School of Deviate Fish"] = ""
--F["School of Tastyfish"] = ""
--F["Schooner Wreckage"] = ""
--F["Schooner Wreckage Pool"] = ""
--F["Sha-Touched Spinefish"] = ""
--F["Shipwreck Debris"] = ""
--F["Sparse Firefin Snapper School"] = ""
--F["Sparse Oily Blackmouth School"] = ""
--F["Sparse Schooner Wreckage"] = ""
--F["Spinefish School"] = ""
--F["Sporefish School"] = ""
--F["Steam Pump Flotsam"] = ""
F["Stonescale Eel Swarm"] = "Banco di Anguille Squamapietra"
--F["Strange Pool"] = ""
--F["Swarm of Panicked Paddlefish"] = ""
--F["Tangled Mantid Shrimp Cluster"] = ""
--F["Teeming Firefin Snapper School"] = ""
--F["Teeming Floating Wreckage"] = ""
--F["Teeming Oily Blackmouth School"] = ""
--F["Tiger Gourami School"] = ""
--F["Tiger Gourami Slush"] = ""
--F["Waterlogged Wreckage"] = ""
--F["Waterlogged Wreckage Pool"] = ""