INOTE_Locale = {
	["enUS"] = {
		--"Plugin" names
		["note"]="Note",
		["itemlevel"]="Item Level",
		
		--Note strings
		["note.edit"]="Note for %s", --Editing note header. %s for item name
		
		--ItemLevel strings
		["ilvl.match"]="Item Level %d+", --RegEx for blizz's entry in the tooltip
		["ilvl.display"]="Item Level: %i", --Output string. %i for level
		
		--Command line
		["help.show"]="Show given note type.",
		["cli.show"]="%s now shown.", --%s is the plugin name
		["help.hide"]="Do not show given note type.",
		["cli.hide"]="%s now hidden.", --%s is the plugin name
		["help.shown"]="Display if given note type is shown or not.",
		["cli.shown.noOrder"]="%s does not have a placement in the order, and will not be shown. Use order to correct this.",
		["cli.shown.shown"]="%s is currently being |cff00ff00shown|r.",
		["cli.shown.hidden"]="%s is currently |cffff0000hidden|r.",
		["cli.shown.noExist"]="%s does not exist.", --%s is the plugin name for all of these
		["help.color"]="Pass either |cffff00ffcolor|r to"..
			" open the color picker, or |cffff00ffRRGGBB|r to set the color"..
			" via the command line (Red, Green, Blue; in hex).",
		["cli.color"]="Set color for %s", --%s is the coloured plugin name
		["help.order"]="Pass a comma separated list of note types to set the order. "..
			"Pass nothing to tack on any missing entries (denoted by an X in the list command).",
		["cli.order.missing"]="Added %i missing entries to the order.", --%i is the number of missing entries
		["cli.order.reset"]="Set order, use list to check it - if desired.",
		["help.list"]="Lists available note types and their shorthand names in parenthesis if they have one.",
		["cli.list.shown"]="Shown",
		["cli.list.missing"]="Plugin not running",
		["cli.list.hidden"]="Hidden",
		["cli.help"]="For the following commands, pass the note type followed by the command.\n"..
			"You may separate the two with either a space or equals.\n"..
			"Commands: show hide shown color\n"..
			"These commands function differently: list order\n"..
			"If you want further help on a command, type help |cffff00ffcommand|r.",
		
		--Options interface
		["gui.name"]="Item Notes",
		["gui.ver"]="%s v%s", --First %s is the plugin name, second %s is the version string
		["gui.editNote"]="Edit selected note",
		["ilvl.equips"]="Only show on equipment",
		["ilvl.no1"]="Don't show for level 1 items",
	},
}
