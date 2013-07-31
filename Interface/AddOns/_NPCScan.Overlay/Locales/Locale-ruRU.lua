--[[****************************************************************************
  * _NPCScan.Overlay by Saiket                                                 *
  * Locales/Locale-ruRU.lua - Localized string constants (ru-RU).              *
  ****************************************************************************]]


if ( GetLocale() ~= "ruRU" ) then
	return;
end


-- See http://wow.curseforge.com/addons/npcscan-overlay/localization/ruRU/
local Overlay = select( 2, ... );
Overlay.L = setmetatable( {
	NPCs = setmetatable( {
		[ 18684 ] = "Бро'Газ Без Клана",
		[ 32491 ] = "Затерянный во времени протодракон",
		[ 33776 ] = "Гондрия",
		[ 35189 ] = "Сколл",
		[ 38453 ] = "Арктур",
		[ 49822 ] = "Яшмовый Клык",
		[ 49913 ] = "Леди Лала",
		[ 50005 ] = "Посейдус",
		[ 50009 ] = "Мобус",
		[ 50050 ] = "Шок'шарак",
		[ 50051 ] = "Призрачный краб",
		[ 50052 ] = "Углик Черносерд",
		[ 50053 ] = "Тартук Изгой",
		[ 50056 ] = "Гарр",
		[ 50057 ] = "Жарокрыл",
		[ 50058 ] = "Калентий",
		[ 50059 ] = "Голгарок",
		[ 50060 ] = "Тербурий",
		[ 50061 ] = "Зариона",
		[ 50062 ] = "Эонакс",
		[ 50063 ] = "Акма'хат",
		[ 50064 ] = "Сирус Блек",
		[ 50065 ] = "Армагедилло",
		[ 50085 ] = "Властитель Губительная Ярость",
		[ 50086 ] = "Тарвий Злобный",
		[ 50089 ] = "Джулак-Рок",
		[ 50138 ] = "Карома",
		[ 50154 ] = "Мадекс",
		[ 50159 ] = "Самбас",
		[ 50815 ] = "Скарр",
		[ 50959 ] = "Каркин",
		[ 51071 ] = "Капитан Флоренс",
		[ 51079 ] = "Капитан Злозюйд",
		[ 54318 ] = "Анха",
		[ 54319 ] = "Магрия",
		[ 54320 ] = "Бан'талос",
		[ 54321 ] = "Соликс",
		[ 54322 ] = "Мер'тилак",
		[ 54323 ] = "Кирикс",
		[ 54324 ] = "Жарисс",
		[ 54338 ] = "Антрисс",
		[ 60491 ] = "Ша Злости", -- Needs review
		[ 62346 ] = "Галеон", -- Needs review
		[ 64403 ] = "Алани", -- Needs review
	}, { __index = Overlay.L.NPCs; } );

	CONFIG_ALPHA = "Альфа",
	CONFIG_DESC = "Выбор карт, на которых будут показаны пути НИПов.  Большинство дополнений, модифицирующих карты, управляются функцией \"Карта мира\".",
	CONFIG_SHOWALL = "Всегда показывать все пути.",
	CONFIG_SHOWALL_DESC = "Обычно, когда за НИПом не идет слежение, его путь не отображается на карте. Включите данную функцию, чтобы отображать все известные пути НИПов.",
	CONFIG_TITLE = "Наложение",
	CONFIG_TITLE_STANDALONE = "_|cffCCCC88NPCScan|r.Overlay", -- Needs review
	MODULE_ALPHAMAP3 = "Дополнение AlphaMap3",
	MODULE_BATTLEFIELDMINIMAP = "Карта боевой зоны",
	MODULE_MINIMAP = "Миникарта",
	MODULE_RANGERING_DESC = "Заметка: Область слежения появляется только в зонах с отслеживаемыми НИПами.",
	MODULE_RANGERING_FORMAT = "Примерный радиус области слежения: %dyd",
	MODULE_WORLDMAP = "Основная карта мира",
	MODULE_WORLDMAP_KEY_FORMAT = "• %s",
	MODULE_WORLDMAP_TOGGLE = "НИПы",
	MODULE_WORLDMAP_TOGGLE_DESC = "Переключить пути _|cffCCCC88NPCScan|r.Overlay для отслеживаемых НИПов.",
}, { __index = Overlay.L; } );