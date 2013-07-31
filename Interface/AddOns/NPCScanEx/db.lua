-- 25 supported maps
-- 38 special spawns (usually related to achievements or other forcefully injected creatures)
-- 285 tameable beasts
-- 433 rare spawns
-- 756 creatures you should keep an eye out for!

local addonName, db = ...
db.version = 9

db.maps = {
  [0] = "Eastern Kingdoms",
  [1] = "Kalimdor",
  [33] = "Shadowfang Keep",
  [36] = "Deadmines",
  [43] = "Wailing Caverns",
  [47] = "Razorfen Kraul",
  [48] = "Blackfathom Deeps",
  [90] = "Gnomeregan",
  [109] = "Sunken Temple",
  [209] = "Zul'Farrak",
  [230] = "Blackrock Depths",
  [329] = "Stratholme",
  [349] = "Maraudon",
  [429] = "Dire Maul",
  [530] = "Outland",
  [532] = "Karazhan",
  [571] = "Northrend",
  [646] = "Deepholm",
  [861] = "Molten Front",
  [870] = "Pandaria",
  [999] = "Theramore's Fall (H)",
  [1004] = "Scarlet Monastery",
  [1007] = "Scholomance",
  [1064] = "Mogu Island Daily Area",
  [1098] = "Throne of Thunder",
}

db.specials = {
  {0, 8666, "Lil Timmy"}, -- Sells [Cat Carrier (White Kitten)]
  {1, 50409, "Mysterious Camel Figurine"}, -- Rewards [Gray Camel] and title from [Scourer of the Eternal Sands]
  {1, 52233, "Linken"}, -- Objective for [Have... Have We Met?] so you have to /wave at this NPC
  {1, 52238, "Mankrik"}, -- Objective for [Have... Have We Met?] so you have to /wave at this NPC
  {1, 52244, "Nat Pagle"}, -- Objective for [Have... Have We Met?] so you have to /wave at this NPC
  {1, 52261, "Hemet Nesingwary"}, -- Objective for [Have... Have We Met?] so you have to /wave at this NPC
  {1, 52265, "Chromie"}, -- Objective for [Have... Have We Met?] so you have to /wave at this NPC
  {1, 53264, "Searris"}, -- Objective for [The Fiery Lords of Sethria's Roost]
  {1, 53265, "Kelbnar"}, -- Objective for [The Fiery Lords of Sethria's Roost]
  {1, 53267, "Andrazor"}, -- Objective for [The Fiery Lords of Sethria's Roost]
  {1, 53271, "Fah Jarakk"}, -- Objective for [The Fiery Lords of Sethria's Roost]
  {1, 53427, "Thassarian"}, -- Objective for [Have... Have We Met?] so you have to /wave at this NPC
  {870, 63619, "Amber Venomlancer"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 63638, "Amber Rocktunneler"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 63662, "Imperial Vizier Zor'lok"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 63664, "Blade Lord Ta'yak"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 63665, "Wind Lord Mel'jarak"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 63666, "Amber-Shaper Un'sok"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 63667, "Garalon"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 64004, "Ghostly Pandaren Fisherman"}, -- Objective for [Lost and Found]
  {870, 64191, "Ghostly Pandaren Craftsman"}, -- Objective for [Lost and Found]
  {870, 64227, "Frozen Trail Packer"}, -- Objective for [Lost and Found]
  {870, 64272, "Jade Warrior Statue"}, -- Objective for [Lost and Found]
  {870, 65435, "Dread Ambercrusher"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65439, "Dread Fearbringer"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65456, "Amber Earthshaker"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65487, "Essence of Fear"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65488, "Essence of Terror"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65489, "Essence of Panic"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65490, "Essence of Horror"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65491, "Essence of Dread"}, -- Objective for [Death From Above] during [Dark Skies]
  {870, 65552, "Glinting Rapana Whelk"}, -- Objective for [Lost and Found]
  {870, 69768, "Zandalari Warscout"},
  {870, 69769, "Zandalari Warbringer"},
  {870, 69841, "Zandalari Warbringer"},
  {870, 69842, "Zandalari Warbringer"},
  {1064, 70003, "Molthor"},
  {1064, 70215, "Hatchling Skyscreamer"}, -- Objective for [Blue Response] so you have to walk close to it to shoo it away
}

db.tameable = {
  {0, 462, "Vultros"},
  {0, 471, "Mother Fang"},
  {0, 521, "Lupos"},
  {0, 574, "Naraxis"},
  {0, 616, "Chatter"},
  {0, 1112, "Leech Widow"},
  {0, 1130, "Bjarn"},
  {0, 1132, "Timber"},
  {0, 1140, "Razormaw Matriarch"},
  {0, 1552, "Scale Belly"},
  {0, 2476, "Gosh-Haldir"},
  {0, 2753, "Barnabus"},
  {0, 2850, "Broken Tooth"},
  {0, 2931, "Zaricotl"},
  {0, 3581, "Sewer Beast"},
  {0, 8211, "Old Cliff Jumper"},
  {0, 8213, "Ironback"},
  {0, 8277, "Rekk'tilac"},
  {0, 8299, "Spiteflayer"},
  {0, 8300, "Ravage"},
  {0, 8301, "Clack the Reaver"},
  {0, 8302, "Deatheye"},
  {0, 8303, "Grunter"},
  {0, 10077, "Deathmaw"},
  {0, 10356, "Bayne"},
  {0, 10357, "Ressan the Needler"},
  {0, 10359, "Sri'skulk"},
  {0, 12431, "Gorefang"},
  {0, 12433, "Krethis the Shadowspinner"},
  {0, 14222, "Araga"},
  {0, 14223, "Cranky Benj"},
  {0, 14266, "Shanda the Spinner"},
  {0, 14268, "Lord Condar"},
  {0, 14279, "Creepthess"},
  {0, 14280, "Big Samras"},
  {0, 14491, "Kurmokk"},
  {0, 45380, "Ashtail"},
  {0, 45402, "Nix"},
  {0, 50051, "Ghostcrawler"},
  {0, 50138, "Karoma"},
  {0, 50159, "Sambas"},
  {0, 50328, "Fangor"},
  {0, 50330, "Kree"},
  {0, 50335, "Alitus"},
  {0, 50337, "Cackle"},
  {0, 50345, "Alit"},
  {0, 50357, "Sunwing"},
  {0, 50361, "Ornat"},
  {0, 50725, "Azelisk"},
  {0, 50726, "Kalixx"},
  {0, 50728, "Deathstrike"},
  {0, 50730, "Venomspine"},
  {0, 50731, "Needlefang"},
  {0, 50738, "Shimmerscale"},
  {0, 50752, "Tarantis"},
  {0, 50763, "Shadowstalker"},
  {0, 50765, "Miasmiss"},
  {0, 50770, "Zorn"},
  {0, 50775, "Likk the Hunter"},
  {0, 50778, "Ironweb"},
  {0, 50779, "Sporeggon"},
  {0, 50790, "Ionis"},
  {0, 50792, "Chiaa"},
  {0, 50797, "Yukiko"},
  {0, 50803, "Bonechewer"},
  {0, 50804, "Ripwing"},
  {0, 50807, "Catal"},
  {0, 50809, "Heress"},
  {0, 50810, "Favored of Isiset"},
  {0, 50813, "Fene-mal"},
  {0, 50814, "Corpsefeeder"},
  {0, 50818, "The Dark Prowler"},
  {0, 50837, "Kash"},
  {0, 50838, "Tabbs"},
  {0, 50839, "Chromehound"},
  {0, 50842, "Magmagan"},
  {0, 50846, "Slavermaw"},
  {0, 50855, "Jaxx the Rabid"},
  {0, 50856, "Snark"},
  {0, 50858, "Dustwing"},
  {0, 50865, "Saurix"},
  {0, 50876, "Avis"},
  {0, 50882, "Chupacabros"},
  {0, 50886, "Seawing"},
  {0, 50891, "Boros"},
  {0, 50903, "Orlix the Swamplord"},
  {0, 50906, "Mutilax"},
  {0, 50908, "Nighthowl"},
  {0, 50915, "Snort"},
  {0, 50916, "Lamepaw the Whimperer"},
  {0, 50922, "Warg"},
  {0, 50926, "Grizzled Ben"},
  {0, 50929, "Little Bjorn"},
  {0, 50930, "Hibernus the Sleeper"},
  {0, 50931, "Mange"},
  {0, 50937, "Hamhide"},
  {0, 50940, "Swee"},
  {0, 50942, "Snoot the Rooter"},
  {0, 50946, "Hogzilla"},
  {0, 50947, "Varah"},
  {0, 50948, "Crystalback"},
  {0, 50949, "Finn's Gambit"},
  {0, 50955, "Carcinak"},
  {0, 50964, "Chops"},
  {0, 50967, "Craw the Ravager"},
  {0, 51000, "Blackshell the Impenetrable"},
  {0, 51002, "Scorpoxx"},
  {0, 51007, "Serkett"},
  {0, 51010, "Snips"},
  {0, 51014, "Terrapis"},
  {0, 51018, "Zormus"},
  {0, 51021, "Vorticus"},
  {0, 51022, "Chordix"},
  {0, 51026, "Gnath"},
  {0, 51027, "Spirocula"},
  {0, 51029, "Parasitus"},
  {0, 51031, "Tracker"},
  {0, 51037, "Lost Gilnean Wardog"},
  {0, 51040, "Snuffles"},
  {0, 51042, "Bleakheart"},
  {0, 51044, "Plague"},
  {0, 51048, "Rexxus"},
  {0, 51052, "Gib the Banana-Hoarder"},
  {0, 51053, "Quirix"},
  {0, 51057, "Weevil"},
  {0, 51058, "Aphis"},
  {0, 51063, "Phalanax"},
  {0, 51066, "Crystalfang"},
  {0, 51067, "Glint"},
  {0, 51076, "Lopex"},
  {0, 51077, "Bushtail"},
  {0, 51661, "Tsul'Kalu"},
  {0, 51662, "Mahamba"},
  {0, 51663, "Pogeyan"},
  {0, 52146, "Chitter"},
  {1, 2172, "Strider Clutchmother"},
  {1, 2175, "Shadowclaw"},
  {1, 3068, "Mazzranache"},
  {1, 3253, "Silithid Harvester"},
  {1, 4132, "Krkk'kx"},
  {1, 5349, "Arash-ethis"},
  {1, 5350, "Qirot"},
  {1, 5352, "Old Grizzlegut"},
  {1, 5356, "Snarler"},
  {1, 5807, "The Rake"},
  {1, 5823, "Death Flayer"},
  {1, 5828, "Humar the Pridelord"},
  {1, 5829, "Snort the Heckler"},
  {1, 5834, "Azzere the Skyblade"},
  {1, 5842, "Takk the Leaper"},
  {1, 5865, "Dishu"},
  {1, 5935, "Ironeye the Invincible"},
  {1, 5937, "Vile Sting"},
  {1, 6581, "Ravasaur Matriarch"},
  {1, 6582, "Clutchmother Zavas"},
  {1, 6584, "King Mosh"},
  {1, 6585, "Uhk'loc"},
  {1, 8204, "Soriid the Devourer"},
  {1, 8205, "Haarka the Ravenous"},
  {1, 8207, "Emberwing"},
  {1, 8660, "The Evalcharr"},
  {1, 10200, "Rak'shiri"},
  {1, 10644, "Mist Howler"},
  {1, 10741, "Sian-Rotam"},
  {1, 11497, "The Razza"},
  {1, 12037, "Ursol'lok"},
  {1, 14227, "Hissperak"},
  {1, 14228, "Giggler"},
  {1, 14339, "Death Howl"},
  {1, 14343, "Olm the Wise"},
  {1, 14344, "Mongress"},
  {1, 14430, "Duskstalker"},
  {1, 14472, "Gretheer"},
  {1, 14473, "Lapress"},
  {1, 14474, "Zora"},
  {1, 14475, "Rex Ashil"},
  {1, 14476, "Krellack"},
  {1, 14477, "Grubthor"},
  {1, 18241, "Crusty"},
  {1, 39183, "Scorpitar"},
  {1, 39185, "Slaverjaw"},
  {1, 39186, "Hellgazer"},
  {1, 47386, "Ainamiss the Hive Queen"},
  {1, 47387, "Harakiss the Infestor"},
  {1, 50058, "Terrorpene"},
  {1, 50154, "Madexx"},
  {1, 50329, "Rrakk"},
  {1, 50342, "Heronis"},
  {1, 50343, "Quall"},
  {1, 50346, "Ronak"},
  {1, 50348, "Norissis"},
  {1, 50353, "Manas"},
  {1, 50362, "Blackbog the Fang"},
  {1, 50370, "Karapax"},
  {1, 50724, "Spinecrawl"},
  {1, 50727, "Strix the Barbed"},
  {1, 50737, "Acroniss"},
  {1, 50741, "Kaxx"},
  {1, 50742, "Qem"},
  {1, 50743, "Manax"},
  {1, 50744, "Qu'rik"},
  {1, 50745, "Losaj"},
  {1, 50746, "Bornix the Burrower"},
  {1, 50747, "Tix"},
  {1, 50748, "Nyaj"},
  {1, 50759, "Iriss the Widow"},
  {1, 50764, "Paraliss"},
  {1, 50777, "Needle"},
  {1, 50785, "Skyshadow"},
  {1, 50786, "Sparkwing"},
  {1, 50788, "Quetzl"},
  {1, 50812, "Arae"},
  {1, 50819, "Iceclaw"},
  {1, 50825, "Feras"},
  {1, 50833, "Duskcoat"},
  {1, 50864, "Thicket"},
  {1, 50874, "Tenok"},
  {1, 50884, "Dustflight the Cowardly"},
  {1, 50892, "Cyn"},
  {1, 50895, "Volux"},
  {1, 50897, "Ffexk the Dunestalker"},
  {1, 50901, "Teromak"},
  {1, 50905, "Cida"},
  {1, 50925, "Grovepaw"},
  {1, 50945, "Scruff"},
  {1, 50952, "Barnacle Jim"},
  {1, 50957, "Hugeclaw"},
  {1, 50986, "Goldenback"},
  {1, 50993, "Gal'dorak"},
  {1, 50995, "Bruiser"},
  {1, 50997, "Bornak the Gorer"},
  {1, 51001, "Venomclaw"},
  {1, 51004, "Toxx"},
  {1, 51008, "The Barbed Horror"},
  {1, 51017, "Gezan"},
  {1, 51025, "Dilennaa"},
  {1, 51028, "The Deep Tunneler"},
  {1, 51045, "Arcanus"},
  {1, 51046, "Fidonis"},
  {1, 51062, "Khep-Re"},
  {1, 51401, "Madexx"},
  {1, 51402, "Madexx"},
  {1, 51403, "Madexx"},
  {1, 51404, "Madexx"},
  {1, 54318, "Ankha"},
  {1, 54319, "Magria"},
  {1, 54320, "Ban'thalos"},
  {1, 54533, "Prince Lakma"},
  {47, 4425, "Blind Hunter"},
  {530, 17144, "Goretooth"},
  {530, 18680, "Marticar"},
  {530, 20932, "Nuramoc"},
  {532, 16180, "Shadikith the Glider"},
  {532, 16181, "Rokad the Ravager"},
  {571, 32361, "Icehorn"},
  {571, 32475, "Terror Spinner"},
  {571, 32481, "Aotona"},
  {571, 32485, "King Krush"},
  {571, 32517, "Loque'nahak"},
  {571, 33776, "Gondria"},
  {571, 35189, "Skoll"},
  {571, 38453, "Arcturis"},
  {646, 49822, "Jadefang"},
  {861, 50815, "Skarr"},
  {861, 50959, "Karkin"},
  {861, 54321, "Solix"},
  {861, 54322, "Deth'tilac"},
  {861, 54323, "Kirix"},
  {861, 54324, "Skitterflame"},
  {861, 54338, "Anthriss"},
  {999, 4380, "Darkmist Widow"},
  {999, 14232, "Dart"},
  {999, 14233, "Ripscale"},
  {999, 14234, "Hayoc"},
  {999, 14237, "Oozeworm"},
  {999, 50342, "Heronis"},
  {999, 50735, "Blinkeye the Rattler"},
  {999, 50764, "Paraliss"},
  {999, 50784, "Anith"},
  {999, 50875, "Nychus"},
  {999, 50901, "Teromak"},
  {999, 50945, "Scruff"},
  {999, 50957, "Hugeclaw"},
  {999, 51061, "Roth-Salam"},
  {999, 51069, "Scintillex"},
}

db.rares = {
  {0, 61, "Thuros Lightfingers"},
  {0, 62, "Gug Fatcandle"},
  {0, 79, "Narg the Taskmaster"},
  {0, 99, "Morgaine the Sly"},
  {0, 100, "Gruff Swiftbite"},
  {0, 472, "Fedfennel"},
  {0, 506, "Sergeant Brashclaw"},
  {0, 507, "Fenros"},
  {0, 519, "Slark"},
  {0, 520, "Brack"},
  {0, 534, "Nefaru"},
  {0, 572, "Leprithus"},
  {0, 573, "Foe Reaper 4000"},
  {0, 584, "Kazon"},
  {0, 763, "Lost One Chieftain"},
  {0, 947, "Rohh the Silent"},
  {0, 1063, "Jade"},
  {0, 1106, "Lost One Cook"},
  {0, 1119, "Hammerspine"},
  {0, 1137, "Edan the Howler"},
  {0, 1260, "Great Father Arctikus"},
  {0, 1398, "Boss Galgosh"},
  {0, 1399, "Magosh"},
  {0, 1424, "Master Digger"},
  {0, 1425, "Kubb"},
  {0, 1531, "Lost Soul"},
  {0, 1533, "Tormented Spirit"},
  {0, 1837, "Scarlet Judge"},
  {0, 1838, "Scarlet Interrogator"},
  {0, 1839, "Scarlet High Clerist"},
  {0, 1841, "Scarlet Executioner"},
  {0, 1843, "Foreman Jerris"},
  {0, 1844, "Foreman Marcrid"},
  {0, 1847, "Foulmane"},
  {0, 1848, "Lord Maldazzar"},
  {0, 1849, "Dreadwhisper"},
  {0, 1851, "The Husk"},
  {0, 1885, "Scarlet Smith"},
  {0, 1910, "Muad"},
  {0, 1911, "Deeb"},
  {0, 1936, "Farmer Solliden"},
  {0, 2090, "Ma'ruk Wyrmscale"},
  {0, 2108, "Garneg Charskull"},
  {0, 2258, "Maggarrak"},
  {0, 2452, "Skhowl"},
  {0, 2453, "Lo'Grosh"},
  {0, 2541, "Lord Sakrasis"},
  {0, 2598, "Darbel Montrose"},
  {0, 2600, "Singer"},
  {0, 2601, "Foulbelly"},
  {0, 2602, "Ruul Onestone"},
  {0, 2604, "Molok the Crusher"},
  {0, 2605, "Zalas Witherbark"},
  {0, 2606, "Nimar the Slayer"},
  {0, 2609, "Geomancer Flintdagger"},
  {0, 2744, "Shadowforge Commander"},
  {0, 2749, "Barricade"},
  {0, 2751, "War Golem"},
  {0, 2752, "Rumbler"},
  {0, 2754, "Anathemus"},
  {0, 2779, "Prince Nazjak"},
  {0, 5348, "Dreamwatcher Forktongue"},
  {0, 7846, "Teremus the Devourer"},
  {0, 8210, "Razortalon"},
  {0, 8212, "The Reak"},
  {0, 8214, "Jalinde Summerdrake", "ALLIANCE_FRIENDLY"},
  {0, 8215, "Grimungous"},
  {0, 8216, "Retherokk the Berserker"},
  {0, 8217, "Mith'rethis the Enchanter"},
  {0, 8218, "Witherheart the Stalker"},
  {0, 8219, "Zul'arek Hatefowler"},
  {0, 8278, "Smoldar"},
  {0, 8279, "Faulty War Golem"},
  {0, 8280, "Shleipnarr"},
  {0, 8281, "Scald"},
  {0, 8282, "Highlord Mastrogonde"},
  {0, 8283, "Slave Master Blackheart"},
  {0, 8296, "Mojo the Twisted"},
  {0, 8297, "Magronos the Unyielding"},
  {0, 8298, "Akubar the Seer"},
  {0, 8304, "Dreadscorn"},
  {0, 8503, "Gibblewilt"},
  {0, 8976, "Hematos"},
  {0, 8978, "Thauris Balgarr"},
  {0, 8979, "Gruklash"},
  {0, 8981, "Malfunctioning Reaver"},
  {0, 9602, "Hahk'Zor"},
  {0, 9604, "Gorgon'och"},
  {0, 10078, "Terrorspark"},
  {0, 10119, "Volchan"},
  {0, 10358, "Fellicent's Shade"},
  {0, 10817, "Duggan Wildhammer"},
  {0, 10818, "Death Knight Soulbearer"},
  {0, 10819, "Baron Bloodbane"},
  {0, 10821, "Hed'mush the Rotting"},
  {0, 10823, "Zul'Brin Warpbranch"},
  {0, 10824, "Death-Hunter Hawkspear"},
  {0, 10825, "Gish the Unmoving"},
  {0, 10826, "Lord Darkscythe"},
  {0, 10827, "Deathspeaker Selendre"},
  {0, 11383, "High Priestess Hai'watna"},
  {0, 14221, "Gravis Slipknot"},
  {0, 14224, "7:XT"},
  {0, 14267, "Emogg the Crusher"},
  {0, 14269, "Seeker Aqualon"},
  {0, 14270, "Squiddic"},
  {0, 14271, "Ribchaser"},
  {0, 14272, "Snarlflare"},
  {0, 14273, "Boulderheart"},
  {0, 14275, "Tamra Stormpike", "ALLIANCE_FRIENDLY"},
  {0, 14276, "Scargil"},
  {0, 14277, "Lady Zephris"},
  {0, 14278, "Ro'Bark"},
  {0, 14281, "Jimmy the Bleeder"},
  {0, 14424, "Mirelow"},
  {0, 14425, "Gnawbone"},
  {0, 14433, "Sludginn"},
  {0, 14446, "Fingat"},
  {0, 14447, "Gilmorian"},
  {0, 14448, "Molt Thorn"},
  {0, 14487, "Gluggl"},
  {0, 14488, "Roloch"},
  {0, 14490, "Rippa"},
  {0, 14492, "Verifonix"},
  {0, 16184, "Nerubian Overseer"},
  {0, 44224, "Two-Toes"},
  {0, 44225, "Rufus Darkshot"},
  {0, 44226, "Sarltooth"},
  {0, 44227, "Gazz the Loch-Hunter"},
  {0, 45257, "Mordak Nightbender"},
  {0, 45258, "Cassia the Slitherqueen"},
  {0, 45260, "Blackleaf"},
  {0, 45262, "Narixxus the Doombringer"},
  {0, 45369, "Morick Darkbrew"},
  {0, 45384, "Sagepaw"},
  {0, 45398, "Grizlak"},
  {0, 45399, "Optimo"},
  {0, 45401, "Whitefin"},
  {0, 45404, "Geoshaper Maren"},
  {0, 45739, "The Unknown Soldier"},
  {0, 45740, "Watcher Eva"},
  {0, 45771, "Marus"},
  {0, 45785, "Carved One"},
  {0, 45801, "Eliza"},
  {0, 45811, "Marina DeSirrus"},
  {0, 46981, "Nightlash"},
  {0, 46992, "Berard the Moon-Crazed"},
  {0, 47003, "Bolgaff"},
  {0, 47008, "Fenwick Thatros"},
  {0, 47009, "Aquarius the Unbound"},
  {0, 47010, "Indigos"},
  {0, 47012, "Effritus"},
  {0, 47015, "Lost Son of Arugal"},
  {0, 47023, "Thule Ravenclaw"},
  {0, 49913, "Lady La-La"},
  {0, 50005, "Poseidus"},
  {0, 50009, "Mobus"},
  {0, 50050, "Shok'sharak"},
  {0, 50052, "Burgy Blackheart"},
  {0, 50085, "Overlord Sunderfury"},
  {0, 50086, "Tarvus the Vile"},
  {0, 50089, "Julak-Doom"},
  {0, 51071, "Captain Florence", "ALLIANCE_FRIENDLY"},
  {0, 51079, "Captain Foulwind", "HORDE_FRIENDLY"},
  {0, 51658, "Mogh the Dead"},
  {1, 2162, "Agal"},
  {1, 2184, "Lady Moongazer"},
  {1, 2186, "Carnivous the Breaker"},
  {1, 2191, "Licillin"},
  {1, 2192, "Firecaller Radison"},
  {1, 3058, "Arra'chea"},
  {1, 3270, "Elder Mystic Razorsnout"},
  {1, 3295, "Sludge Anomaly"},
  {1, 3398, "Gesharahan"},
  {1, 3470, "Rathorian"},
  {1, 3535, "Blackmoss the Fetid"},
  {1, 3652, "Trigore the Lasher"},
  {1, 3672, "Boahn"},
  {1, 3735, "Apothecary Falthis", "HORDE_FRIENDLY"},
  {1, 3736, "Darkslayer Mordenthal", "HORDE_FRIENDLY"},
  {1, 3773, "Akkrilus"},
  {1, 3792, "Terrowulf Packlord"},
  {1, 4066, "Nal'taszar"},
  {1, 5343, "Lady Szallah"},
  {1, 5345, "Diamond Head"},
  {1, 5346, "Bloodroar the Stalker"},
  {1, 5347, "Antilus the Soarer"},
  {1, 5354, "Gnarl Leafbrother"},
  {1, 5785, "Sister Hatelash"},
  {1, 5786, "Snagglespear"},
  {1, 5787, "Enforcer Emilgund"},
  {1, 5809, "Sergeant Curtis", "ALLIANCE_FRIENDLY"},
  {1, 5822, "Felweaver Scornn"},
  {1, 5824, "Captain Flat Tusk"},
  {1, 5826, "Geolord Mottle"},
  {1, 5830, "Sister Rathtalon"},
  {1, 5831, "Swiftmane"},
  {1, 5835, "Foreman Grills"},
  {1, 5836, "Engineer Whirleygig"},
  {1, 5837, "Stonearm"},
  {1, 5838, "Brokespear"},
  {1, 5841, "Rocklance"},
  {1, 5847, "Heggin Stonewhisker", "ALLIANCE_FRIENDLY"},
  {1, 5848, "Malgin Barleybrew", "ALLIANCE_FRIENDLY"},
  {1, 5849, "Digger Flameforge", "ALLIANCE_FRIENDLY"},
  {1, 5851, "Captain Gerogg Hammertoe", "ALLIANCE_FRIENDLY"},
  {1, 5859, "Hagg Taurenbane"},
  {1, 5863, "Geopriest Gukk'rok"},
  {1, 5864, "Swinegart Spearhide"},
  {1, 5915, "Brother Ravenoak"},
  {1, 5928, "Sorrow Wing"},
  {1, 5930, "Sister Riven"},
  {1, 5932, "Taskmaster Whipfang"},
  {1, 5933, "Achellios the Banished"},
  {1, 6118, "Varo'then's Ghost"},
  {1, 6583, "Gruff"},
  {1, 6648, "Antilos"},
  {1, 6649, "Lady Sesspira"},
  {1, 6650, "General Fangferror"},
  {1, 6651, "Gatekeeper Rageroar"},
  {1, 7015, "Flagglemurk the Cruel"},
  {1, 7016, "Lady Vespira"},
  {1, 7017, "Lord Sinslayer"},
  {1, 7104, "Dessecus"},
  {1, 7137, "Immolatus"},
  {1, 8199, "Warleader Krazzilak"},
  {1, 8200, "Jin'Zallah the Sandbringer"},
  {1, 8201, "Omgorn the Lost"},
  {1, 8203, "Kregg Keelhaul"},
  {1, 10196, "General Colbatann"},
  {1, 10197, "Mezzir the Howler"},
  {1, 10198, "Kashoch the Reaver"},
  {1, 10199, "Grizzle Snowpaw"},
  {1, 10202, "Azurous"},
  {1, 10559, "Lady Vespia"},
  {1, 10639, "Rorgish Jowl"},
  {1, 10640, "Oakpaw"},
  {1, 10641, "Branch Snapper"},
  {1, 10642, "Eck'alom"},
  {1, 10647, "Prince Raze"},
  {1, 11447, "Mushgog"},
  {1, 11498, "Skarr the Broken"},
  {1, 11688, "Cursed Centaur"},
  {1, 13896, "Scalebeard"},
  {1, 14225, "Prince Kellen"},
  {1, 14226, "Kaskk"},
  {1, 14229, "Accursed Slitherblade", "HORDE_FRIENDLY"},
  {1, 14230, "Burgle Eye"},
  {1, 14340, "Alshirr Banebreath"},
  {1, 14342, "Ragepaw"},
  {1, 14345, "The Ongar"},
  {1, 14426, "Harb Foulmountain"},
  {1, 14427, "Gibblesnik"},
  {1, 14428, "Uruson"},
  {1, 14429, "Grimmaw"},
  {1, 14431, "Fury Shelda"},
  {1, 14432, "Threggil"},
  {1, 14471, "Setis"},
  {1, 14478, "Huricanian"},
  {1, 14479, "Twilight Lord Everun"},
  {1, 43488, "Mordei the Earthrender"},
  {1, 43613, "Doomsayer Wiserunner"},
  {1, 43720, "\"Pokey\" Thornmantle"},
  {1, 44714, "Fronkle the Disturbed"},
  {1, 44722, "Twisted Reflection of Narain"},
  {1, 44750, "Caliph Scorpidsting"},
  {1, 44759, "Andre Firebeard"},
  {1, 44761, "Aquementas the Unchained"},
  {1, 44767, "Occulus the Corrupted"},
  {1, 50053, "Thartuk the Exile"},
  {1, 50056, "Garr"},
  {1, 50057, "Blazewing"},
  {1, 50063, "Akma'hat"},
  {1, 50064, "Cyrus the Black"},
  {1, 50065, "Armagedillo"},
  {33, 3872, "Deathsworn Captain"},
  {36, 596, "Brainwashed Noble"},
  {36, 599, "Marisa du'Paige"},
  {43, 5912, "Deviate Faerie Dragon"},
  {47, 4842, "Earthcaller Halmgar"},
  {48, 12902, "Lorgus Jett"},
  {90, 6228, "Dark Iron Ambassador"},
  {109, 14445, "Captain Wyrmak"},
  {209, 10080, "Sandarr Dunereaver"},
  {209, 10081, "Dustwraith"},
  {209, 10082, "Zerillis"},
  {230, 8923, "Panzor the Invincible"},
  {329, 10393, "Skul"},
  {329, 10558, "Hearthsinger Forresten"},
  {329, 10809, "Stonespine"},
  {329, 10820, "Duke Ragereaver"},
  {349, 12237, "Meshlok the Harvester"},
  {429, 11467, "Tsu'zee"},
  {429, 14506, "Lord Hel'nurath"},
  {530, 16854, "Eldinarcus"},
  {530, 16855, "Tregla"},
  {530, 18677, "Mekthorg the Wild"},
  {530, 18678, "Fulgorge"},
  {530, 18679, "Vorakem Doomspeaker"},
  {530, 18681, "Coilfang Emissary"},
  {530, 18682, "Bog Lurker"},
  {530, 18683, "Voidhunter Yar"},
  {530, 18684, "Bro'Gaz the Clanless"},
  {530, 18685, "Okrek"},
  {530, 18686, "Doomsayer Jurim"},
  {530, 18689, "Crippler"},
  {530, 18690, "Morcrush"},
  {530, 18692, "Hemathion"},
  {530, 18693, "Speaker Mar'grom"},
  {530, 18694, "Collidus the Warp-Watcher"},
  {530, 18695, "Ambassador Jerrikar"},
  {530, 18696, "Kraator"},
  {530, 18697, "Chief Engineer Lorthander"},
  {530, 18698, "Ever-Core the Punisher"},
  {530, 21724, "Hawkbane"},
  {530, 22060, "Fenissa the Assassin"},
  {530, 22062, "Dr. Whitherlimb"},
  {532, 16179, "Hyakiss the Lurker"},
  {571, 32357, "Old Crystalbark"},
  {571, 32358, "Fumblub Gearwind"},
  {571, 32377, "Perobas the Bloodthirster"},
  {571, 32386, "Vigdis the War Maiden"},
  {571, 32398, "King Ping"},
  {571, 32400, "Tukemuth"},
  {571, 32409, "Crazed Indu'le Survivor"},
  {571, 32417, "Scarlet Highlord Daion"},
  {571, 32422, "Grocklar"},
  {571, 32429, "Seething Hate"},
  {571, 32438, "Syreian the Bonecarver"},
  {571, 32447, "Zul'drak Sentinel"},
  {571, 32471, "Griegen"},
  {571, 32487, "Putridus the Ancient"},
  {571, 32491, "Time-Lost Proto Drake"},
  {571, 32495, "Hildana Deathstealer"},
  {571, 32500, "Dirkee"},
  {571, 32501, "High Thane Jorfus"},
  {571, 32630, "Vyragosa"},
  {646, 50059, "Golgarok"},
  {646, 50060, "Terborus"},
  {646, 50061, "Xariona"},
  {646, 50062, "Aeonaxx", "ALLIANCE_FRIENDLY HORDE_FRIENDLY"},
  {870, 50331, "Go-Kan"},
  {870, 50332, "Korda Torros"},
  {870, 50333, "Lon the Bull"},
  {870, 50334, "Dak the Breaker"},
  {870, 50336, "Yorik Sharpeye"},
  {870, 50338, "Kor'nas Nightsavage"},
  {870, 50339, "Sulik'shor"},
  {870, 50340, "Gaarn the Toxic"},
  {870, 50341, "Borginn Darkfist"},
  {870, 50344, "Norlaxx"},
  {870, 50347, "Karr the Darkener"},
  {870, 50349, "Kang the Soul Thief"},
  {870, 50350, "Morgrinn Crackfang"},
  {870, 50351, "Jonn-Dar"},
  {870, 50352, "Qu'nas"},
  {870, 50354, "Havak"},
  {870, 50355, "Kah'tir"},
  {870, 50356, "Krol the Blade"},
  {870, 50359, "Urgolax"},
  {870, 50363, "Krax'ik"},
  {870, 50364, "Nal'lak the Ripper"},
  {870, 50388, "Torik-Ethis"},
  {870, 50733, "Ski'thik"},
  {870, 50734, "Lith'ik the Stalker"},
  {870, 50739, "Gar'lok"},
  {870, 50749, "Kal'tik the Blight"},
  {870, 50750, "Aethis"},
  {870, 50766, "Sele'na"},
  {870, 50768, "Cournith Waterstrider"},
  {870, 50769, "Zai the Outcast"},
  {870, 50772, "Eshelon"},
  {870, 50776, "Nalash Verdantis"},
  {870, 50780, "Sahn Tidehunter"},
  {870, 50782, "Sarnak"},
  {870, 50783, "Salyin Warscout"},
  {870, 50787, "Arness the Scale"},
  {870, 50789, "Nessos the Oracle"},
  {870, 50791, "Siltriss the Sharpener"},
  {870, 50805, "Omnis Grinlok"},
  {870, 50806, "Moldo One-Eye"},
  {870, 50808, "Urobi the Walker"},
  {870, 50811, "Nasra Spothide"},
  {870, 50816, "Ruun Ghostpaw"},
  {870, 50817, "Ahone the Wanderer"},
  {870, 50820, "Yul Wildpaw"},
  {870, 50821, "Ai-Li Skymirror"},
  {870, 50822, "Ai-Ran the Shifting Cloud"},
  {870, 50823, "Mister Ferocious"},
  {870, 50828, "Bonobos"},
  {870, 50830, "Spriggin"},
  {870, 50831, "Scritch"},
  {870, 50832, "The Yowler"},
  {870, 50836, "Ik-Ik the Nimble"},
  {870, 50840, "Major Nanners"},
  {870, 51059, "Blackhoof"},
  {870, 51078, "Ferdinand"},
  {870, 68317, "Mavis Harms", "ALLIANCE_FRIENDLY"},
  {870, 68318, "Dalan Nightbreaker", "ALLIANCE_FRIENDLY"},
  {870, 68319, "Disha Fearwarden", "ALLIANCE_FRIENDLY"},
  {870, 68320, "Ubunti the Shade", "HORDE_FRIENDLY"},
  {870, 68321, "Kar Warmaker", "HORDE_FRIENDLY"},
  {870, 68322, "Muerta", "HORDE_FRIENDLY"},
  {870, 70096, "War-God Dokah"},
  {870, 70126, "Willy Wilder"},
  {999, 4339, "Brimgore"},
  {999, 14230, "Burgle Eye"},
  {999, 14231, "Drogoth the Roamer"},
  {999, 14235, "The Rot"},
  {999, 14236, "Lord Angler"},
  {1004, 6488, "Fallen Champion"},
  {1004, 6489, "Ironspine"},
  {1004, 6490, "Azshir the Sleepless"},
  {1007, 1850, "Putridius"},
  {1007, 59369, "Doctor Theolen Krastinov"},
  {1064, 50358, "Haywire Sunreaver Construct"},
  {1064, 69664, "Mumta"},
  {1064, 69996, "Ku'lai the Skyclaw"},
  {1064, 69997, "Progenitus"},
  {1064, 69998, "Goda"},
  {1064, 69999, "God-Hulk Ramuk"},
  {1064, 70000, "Al'tabim the All-Seeing"},
  {1064, 70001, "Backbreaker Uru"},
  {1064, 70002, "Lu-Ban"},
  {1064, 70530, "Ra'sha"},
  {1098, 69843, "Zao'cho"},
  {1098, 70238, "Unblinking Eye"},
  {1098, 70243, "Archritualist Kelada"},
  {1098, 70249, "Focused Eye"},
  {1098, 70276, "No'ku Stormsayer"},
  {1098, 70429, "Flesh'rok the Diseased"},
  {1098, 70430, "Rocky Horror"},
  {1098, 70440, "Monara"},
}
