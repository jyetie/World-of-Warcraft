--[[--------------------------------------------------------------------
	GoFish
	Click-cast fishing and enhanced fishing sounds.
	Copyright (c) 2013 Phanx <addons@phanx.net>. All rights reserved.
	See the accompanying README and LICENSE files for more information.
	http://www.wowinterface.com/downloads/info22270-GoFish.html
	http://www.curse.com/addons/wow/gofish
----------------------------------------------------------------------]]

if not GetLocale():match("^pt") then return end
local _, ns = ...
local L, F = ns.L, ns.F

------------------------------------------------------------------------

L.FishingModeOff = "Pesca rápida {ativou}"
L.FishingModeOn = "Pesca rápida {desativou}"
L.ToggleFishingMode = "Ativar/desativar pesca rápida"

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

F["Abundant Bloodsail Wreckage"] = "Destroços Abundante dos Vela Sangrenta"
F["Abundant Firefin Snapper School"] = "Cardume Abundante de Pargo Pinafogo"
F["Abundant Oily Blackmouth School"] = "Cardume Abundante de Bocanera Oleoso"
F["Albino Cavefish School"] = "Cardume de Bagres-cegos Albinos"
F["Algaefin Rockfish School"] = "Cardume de Peixe-pedra Barbatalga"
F["Blackbelly Mudfish School"] = "Cardume de Muçuns-de-barriga-preta"
F["Bloodsail Wreckage"] = "Destroços dos Vela Sangrenta"
F["Bloodsail Wreckage Pool"] = "Destroços dos Vela Sangrenta"
F["Bluefish School"] = "Cardume de Azulinhos"
F["Borean Man O' War School"] = "Cardume de Caravelas Boreanas"
F["Brackish Mixed School"] = "Cardume Misto Salobre"
--F["Brew Frenzied Emperor Salmon"] = ""
--F["Crane Yolk Pool"] = ""
--F["Crowded Redbelly Mandarin"] = ""
F["Deep Sea Monsterbelly School"] = "Cardume de Pançudos do Mar Profundo"
F["Deepsea Sagefish School"] = "Cardume de Sabichões Abissais"
F["Dragonfin Angelfish School"] = "Cardume de Acarás-bandeira Pinadragos"
F["Emperor Salmon School"] = "Cardume de Salmões Imperiais"
F["Fangtooth Herring School"] = "Cardume de Arenques Presadentes"
F["Fathom Eel Swarm"] = "Grande Cardume de Enguias de Profundeza"
--F["Feltail School"] = ""
F["Firefin Snapper School"] = "Cardume de Pargos Pinafogos"
F["Floating Debris"] = "Destroços Flutuantes"
F["Floating Debris Pool"] = "Destroços Flutuantes"
F["Floating Shipwreck Debris"] = "Destroços do Naufrágio"
F["Floating Wreckage"] = "Destroços Flutuantes"
F["Floating Wreckage Pool"] = "Destroços Flutuantes"
F["Giant Mantis Shrimp Swarm"] = "Enxame de Camarões-grilo Gigantes"
F["Glacial Salmon School"] = "Cardume de Salmões Glaciais"
F["Glassfin Minnow School"] = "Cardume de Manjubinhas Galhavítreas"
--F["Glimmering Jewel Danio Pool"] = ""
--F["Glowing Jade Lungfish"] = ""
F["Golden Carp School"] = "Cardume de Carpas Douradas"
F["Greater Sagefish School"] = "Grande Cardume de Sabichões"
F["Highland Guppy School"] = "Cardume de Lebiste das Terras Altas"
F["Highland Mixed School"] = "Cardume Misto das Terras Altas"
F["Imperial Manta Ray School"] = "Cardume de Arraias-jamanta Imperiais"
F["Jade Lungfish School"] = "Cardume de Piramboias de Jade"
F["Jewel Danio School"] = "Cardume de Peixes-zebra"
F["Krasarang Paddlefish School"] = "Cardume de Peixes-espátula de Krasarang"
--F["Lesser Firefin Snapper School"] = ""
--F["Lesser Floating Debris"] = ""
--F["Lesser Oily Blackmouth School"] = ""
--F["Lesser Sagefish School"] = ""
--F["Mixed Ocean School"] = ""
F["Moonglow Cuttlefish School"] = "Cardume de Lulas Brilho-da-lua"
F["Mountain Trout School"] = "Cardume de Truta da Montanha"
--F["Muddy Churning Water"] = ""
F["Mudfish School"] = "Cardume de Muçuns"
F["Musselback Sculpin School"] = "Cardume de Mangangás Berbidorsos"
--F["Mysterious Whirlpool"] = ""
F["Nettlefish School"] = "Cardume de Peixes-urtiga"
--F["Oil Spill"] = ""
F["Oily Blackmouth School"] = "Cardume de Bocaneras Oleosos"
--F["Patch of Elemental Water"] = ""
--F["Pool of Blood"] = ""
F["Pool of Fire"] = "Lago de Fogo"
F["Pure Water"] = "Água Pura"
F["Redbelly Mandarin School"] = "Cardume de Mandarins Vermelhos"
F["Reef Octopus Swarm"] = "Agrupamento de Polvos dos Recifes"
F["Sagefish School"] = "Cardume de Sabichões"
F["School of Darter"] = "Cardume de Platis"
F["School of Deviate Fish"] = "Cardume de Peixes Anormais"
F["School of Tastyfish"] = "Cardume de Papa-Fina-Pintado"
F["Schooner Wreckage"] = "Schooner Antiga"
F["Schooner Wreckage Pool"] = "Destroços da Escuna"
--F["Sha-Touched Spinefish"] = ""
F["Shipwreck Debris"] = "Restos de Naufrágio"
--F["Sparse Firefin Snapper School"] = ""
--F["Sparse Oily Blackmouth School"] = ""
--F["Sparse Schooner Wreckage"] = ""
F["Spinefish School"] = "Cardume de Peixes-espinho"
F["Sporefish School"] = "Cardume de Esporosos"
F["Steam Pump Flotsam"] = "Destroços da Bomba de Vapor"
F["Stonescale Eel Swarm"] = "Grande Cardume de Enguias Petrescamas"
F["Strange Pool"] = "Piscina Estranha"
--F["Swarm of Panicked Paddlefish"] = ""
--F["Tangled Mantid Shrimp Cluster"] = ""
--F["Teeming Firefin Snapper School"] = ""
--F["Teeming Floating Wreckage"] = ""
--F["Teeming Oily Blackmouth School"] = ""
F["Tiger Gourami School"] = "Cardume de Gouramis-tigre"
--F["Tiger Gourami Slush"] = ""
F["Waterlogged Wreckage"] = "Destroços Encharcados"
F["Waterlogged Wreckage Pool"] = "Destroços Encharcados"
