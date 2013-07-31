-- my custom locale file - more streamlined than AceLocale and no lib dependency

-- To help with missing translations please go here:
-- http://www.wowace.com/addons/paste/localization/

local addonName, vars = ...
local Ld, La = {}, {}
local locale = GAME_LOCALE or GetLocale()

vars.L = setmetatable({},{
    __index = function(t, s) return La[s] or Ld[s] or rawget(t,s) or s end
})

Ld["Bind a key to toggle the Paste window"] = "Bind a key to toggle the Paste window"
Ld["characters"] = "characters"
Ld["Clear"] = "Clear"
Ld["Command-V"] = "Command-V"
Ld["Config"] = "Config"
Ld["Control-V"] = "Control-V"
Ld["Debug"] = "Debug"
Ld["Display minimap icon"] = "Display minimap icon"
Ld["for options"] = "for options"
Ld["General"] = "General"
Ld["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = "It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"
Ld["Left Click"] = "Left Click"
Ld["lines"] = "lines"
Ld["Minimap Icon"] = "Minimap Icon"
Ld["Open the configuration GUI"] = "Open the configuration GUI"
Ld["Paste"] = "Paste"
Ld["Paste and Close"] = "Paste and Close"
Ld["Paste to:"] = "Paste to:"
Ld["Profiles"] = "Profiles"
Ld["Right Click"] = "Right Click"
Ld["Show"] = "Show"
Ld["Show/Hide the Paste window"] = "Show/Hide the Paste window"
Ld["Toggle debugging output"] = "Toggle debugging output"
Ld["to toggle window"] = "to toggle window"
Ld["Use %s to paste the clipboard into this box"] = "Use %s to paste the clipboard into this box"
Ld["You must select a whisper target!"] = "You must select a whisper target!"


if locale == "frFR" then do end
-- La["Bind a key to toggle the Paste window"] = ""
La["characters"] = "personnages" -- Needs review
La["Clear"] = "Effacer" -- Needs review
La["Command-V"] = "Commande-V" -- Needs review
La["Config"] = "Configuration" -- Needs review
La["Control-V"] = "Contrôle-V" -- Needs review
La["Debug"] = "Debug" -- Needs review
La["Display minimap icon"] = "Afficher l'icône de la mini-carte" -- Needs review
La["for options"] = "pour les options" -- Needs review
La["General"] = "Général" -- Needs review
La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = "Il semblerait que vous essayez des commandes ''/slash'' dans une chaîne de clavardage. Préféreriez-vous mieux les exécuter?" -- Needs review
La["Left Click"] = "Clic gauche" -- Needs review
La["lines"] = "lignes" -- Needs review
La["Minimap Icon"] = "Icône de la mini-carte" -- Needs review
La["Open the configuration GUI"] = "Ouvrir l'interface graphique (GUI) de configuration" -- Needs review
La["Paste"] = "Coller" -- Needs review
La["Paste and Close"] = "Coller et fermer" -- Needs review
La["Paste to:"] = "Copier vers:" -- Needs review
La["Profiles"] = "Profils" -- Needs review
La["Right Click"] = "Clic droit" -- Needs review
La["Show"] = "Afficher" -- Needs review
La["Show/Hide the Paste window"] = "Afficher/Masquer la fenêtre copiée" -- Needs review
-- La["Toggle debugging output"] = ""
La["to toggle window"] = "pour basculer la fenêtre" -- Needs review
-- La["Use %s to paste the clipboard into this box"] = ""
La["You must select a whisper target!"] = "Vous devez sélectionner une cible à laquelle chuchoter!" -- Needs review

elseif locale == "deDE" then do end
La["Bind a key to toggle the Paste window"] = "Eine Taste festlegen zum Umschalten des Paste-Fensters"
La["characters"] = "Zeichen"
La["Clear"] = "Löschen"
La["Command-V"] = "cmd-v"
La["Config"] = "Konfiguration"
La["Control-V"] = "Strg-V"
La["Debug"] = "Debug"
La["Display minimap icon"] = "Minimap-Icon anzeigen"
La["for options"] = "für Optionen"
La["General"] = "Allgemein"
La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = "Es sieht so aus, als ob du einige Slash-Befehle in den Chat-Kanal einfügst. Sollen diese stattdessen ausgeführt werden?"
La["Left Click"] = "Linksklick"
La["lines"] = "Zeilen"
La["Minimap Icon"] = "Minimap-Icon"
La["Open the configuration GUI"] = "Öffne das Konfigurationsfenster"
La["Paste"] = "Einfügen"
La["Paste and Close"] = "Einfügen und schließen"
La["Paste to:"] = "Einfügen nach:"
La["Profiles"] = "Profile:"
La["Right Click"] = "Rechtsklick"
La["Show"] = "Zeige"
La["Show/Hide the Paste window"] = "Anzeigen/Verbergen des Paste-Fensters"
La["Toggle debugging output"] = "Debugging-Ausgabe umschalten"
La["to toggle window"] = "um Fenster umzuschalten"
La["Use %s to paste the clipboard into this box"] = "Benutze %s um den Inhalt der Zwischenablage in diesen Kasten einzufügen"
La["You must select a whisper target!"] = "Du must ein Flüster-Ziel auswählen!"

elseif locale == "koKR" then do end
-- La["Bind a key to toggle the Paste window"] = ""
-- La["characters"] = ""
-- La["Clear"] = ""
-- La["Command-V"] = ""
-- La["Config"] = ""
-- La["Control-V"] = ""
-- La["Debug"] = ""
-- La["Display minimap icon"] = ""
-- La["for options"] = ""
-- La["General"] = ""
-- La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = ""
-- La["Left Click"] = ""
-- La["lines"] = ""
-- La["Minimap Icon"] = ""
-- La["Open the configuration GUI"] = ""
-- La["Paste"] = ""
-- La["Paste and Close"] = ""
-- La["Paste to:"] = ""
-- La["Profiles"] = ""
-- La["Right Click"] = ""
-- La["Show"] = ""
-- La["Show/Hide the Paste window"] = ""
-- La["Toggle debugging output"] = ""
-- La["to toggle window"] = ""
-- La["Use %s to paste the clipboard into this box"] = ""
-- La["You must select a whisper target!"] = ""

elseif locale == "esMX" then do end
La["Bind a key to toggle the Paste window"] = "Asigna una tecla para mostrar/ocultar la ventana de Paste"
La["characters"] = "caracteres"
La["Clear"] = "Limpiar"
La["Command-V"] = "Comando-V"
La["Config"] = "Opciones"
La["Control-V"] = "Ctrl-V"
La["Debug"] = "Depurar"
La["Display minimap icon"] = "Mostrar icono en minimapa"
La["for options"] = "para opciones"
La["General"] = "General"
La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = "Parece que estás pegando comandos. ¿Quieres ejecutarlos en lugar?"
La["Left Click"] = "Clic iqzuierda"
La["lines"] = "líneas"
La["Minimap Icon"] = "Icono en minimpa"
La["Open the configuration GUI"] = "Mostrar la ventana de configuracion"
La["Paste"] = "Empastar"
La["Paste and Close"] = "Empastar y ocultar"
La["Paste to:"] = "Empastar a:"
La["Profiles"] = "Perfiles"
La["Right Click"] = "Clic derecho"
La["Show"] = "Mostrar"
La["Show/Hide the Paste window"] = "Mostrar/ocultar la ventana de Paste"
La["Toggle debugging output"] = "Activar/desactivar los mensajes de depuracion"
La["to toggle window"] = "para mostrar/ocultar la ventana"
La["Use %s to paste the clipboard into this box"] = "Utilice %s para empastar el contenido del clipboard en esta casilla."
La["You must select a whisper target!"] = "Debes seleccionar un objetivo para susurrar!"

elseif locale == "ruRU" then do end
-- La["Bind a key to toggle the Paste window"] = ""
-- La["characters"] = ""
-- La["Clear"] = ""
-- La["Command-V"] = ""
-- La["Config"] = ""
-- La["Control-V"] = ""
-- La["Debug"] = ""
-- La["Display minimap icon"] = ""
-- La["for options"] = ""
-- La["General"] = ""
-- La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = ""
-- La["Left Click"] = ""
-- La["lines"] = ""
-- La["Minimap Icon"] = ""
-- La["Open the configuration GUI"] = ""
-- La["Paste"] = ""
-- La["Paste and Close"] = ""
-- La["Paste to:"] = ""
-- La["Profiles"] = ""
-- La["Right Click"] = ""
-- La["Show"] = ""
-- La["Show/Hide the Paste window"] = ""
-- La["Toggle debugging output"] = ""
-- La["to toggle window"] = ""
-- La["Use %s to paste the clipboard into this box"] = ""
-- La["You must select a whisper target!"] = ""

elseif locale == "zhCN" then do end
-- La["Bind a key to toggle the Paste window"] = ""
-- La["characters"] = ""
-- La["Clear"] = ""
-- La["Command-V"] = ""
-- La["Config"] = ""
-- La["Control-V"] = ""
-- La["Debug"] = ""
-- La["Display minimap icon"] = ""
-- La["for options"] = ""
-- La["General"] = ""
-- La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = ""
-- La["Left Click"] = ""
-- La["lines"] = ""
-- La["Minimap Icon"] = ""
-- La["Open the configuration GUI"] = ""
-- La["Paste"] = ""
-- La["Paste and Close"] = ""
-- La["Paste to:"] = ""
-- La["Profiles"] = ""
-- La["Right Click"] = ""
-- La["Show"] = ""
-- La["Show/Hide the Paste window"] = ""
-- La["Toggle debugging output"] = ""
-- La["to toggle window"] = ""
-- La["Use %s to paste the clipboard into this box"] = ""
-- La["You must select a whisper target!"] = ""

elseif locale == "esES" then do end
La["Bind a key to toggle the Paste window"] = "Asigna una tecla para mostrar/ocultar la ventana de Paste"
La["characters"] = "caracteres"
La["Clear"] = "Limpiar"
La["Command-V"] = "Comando-V"
La["Config"] = "Opciones"
La["Control-V"] = "Ctrl-V"
La["Debug"] = "Depurar"
La["Display minimap icon"] = "Mostrar icono en minimapa"
La["for options"] = "para opciones"
La["General"] = "General"
La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = "Parece que estás pegando comandos. ¿Quieres ejecutarlos en lugar?"
La["Left Click"] = "Clic iqzuierda"
La["lines"] = "líneas"
La["Minimap Icon"] = "Icono en minimpa"
La["Open the configuration GUI"] = "Mostrar la ventana de configuracion"
La["Paste"] = "Empastar"
La["Paste and Close"] = "Empastar y ocultar"
La["Paste to:"] = "Empastar a:"
La["Profiles"] = "Perfiles"
La["Right Click"] = "Clic derecho"
La["Show"] = "Mostrar"
La["Show/Hide the Paste window"] = "Mostrar/ocultar la ventana de Paste"
La["Toggle debugging output"] = "Activar/desactivar los mensajes de depuracion"
La["to toggle window"] = "para mostrar/ocultar la ventana"
La["Use %s to paste the clipboard into this box"] = "Utilice %s para empastar el contenido del clipboard en esta casilla."
La["You must select a whisper target!"] = "Debes seleccionar un objetivo para susurrar!"

elseif locale == "zhTW" then do end
-- La["Bind a key to toggle the Paste window"] = ""
-- La["characters"] = ""
-- La["Clear"] = ""
-- La["Command-V"] = ""
-- La["Config"] = ""
-- La["Control-V"] = ""
-- La["Debug"] = ""
-- La["Display minimap icon"] = ""
-- La["for options"] = ""
-- La["General"] = ""
-- La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = ""
-- La["Left Click"] = ""
-- La["lines"] = ""
-- La["Minimap Icon"] = ""
-- La["Open the configuration GUI"] = ""
-- La["Paste"] = ""
-- La["Paste and Close"] = ""
-- La["Paste to:"] = ""
-- La["Profiles"] = ""
-- La["Right Click"] = ""
-- La["Show"] = ""
-- La["Show/Hide the Paste window"] = ""
-- La["Toggle debugging output"] = ""
-- La["to toggle window"] = ""
-- La["Use %s to paste the clipboard into this box"] = ""
-- La["You must select a whisper target!"] = ""

elseif locale == "ptBR" then do end
-- La["Bind a key to toggle the Paste window"] = ""
-- La["characters"] = ""
-- La["Clear"] = ""
-- La["Command-V"] = ""
-- La["Config"] = ""
-- La["Control-V"] = ""
-- La["Debug"] = ""
-- La["Display minimap icon"] = ""
-- La["for options"] = ""
-- La["General"] = ""
-- La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = ""
-- La["Left Click"] = ""
-- La["lines"] = ""
-- La["Minimap Icon"] = ""
-- La["Open the configuration GUI"] = ""
-- La["Paste"] = ""
-- La["Paste and Close"] = ""
-- La["Paste to:"] = ""
-- La["Profiles"] = ""
-- La["Right Click"] = ""
-- La["Show"] = ""
-- La["Show/Hide the Paste window"] = ""
-- La["Toggle debugging output"] = ""
-- La["to toggle window"] = ""
-- La["Use %s to paste the clipboard into this box"] = ""
-- La["You must select a whisper target!"] = ""

elseif locale == "itIT" then do end
La["Bind a key to toggle the Paste window"] = "Imposta un tasto per attivare la finestra di Paste" -- Needs review
La["characters"] = "personaggi" -- Needs review
La["Clear"] = "Pulisci" -- Needs review
La["Command-V"] = "Command-V" -- Needs review
La["Config"] = "Configurazione" -- Needs review
La["Control-V"] = "Control-V" -- Needs review
La["Debug"] = "Modalità sviluppatore" -- Needs review
La["Display minimap icon"] = "Mostra l'icona della mini-mappa" -- Needs review
La["for options"] = "per le opzioni" -- Needs review
La["General"] = "Generale" -- Needs review
La["It looks like you're pasting some slash commands to a chat channel. Would you like to execute them instead?"] = "Pare che tu stia incollando dei comandi con lo slash nel canale della chat. Vuoi che vengano eseguiti?" -- Needs review
La["Left Click"] = "Click Sinistro" -- Needs review
La["lines"] = "linee" -- Needs review
La["Minimap Icon"] = "Icona della mini-mappa" -- Needs review
La["Open the configuration GUI"] = "Apri la configurazione dell'interfaccia" -- Needs review
La["Paste"] = "Incolla" -- Needs review
La["Paste and Close"] = "Incolla e chiudi" -- Needs review
La["Paste to:"] = "Incolla in:" -- Needs review
La["Profiles"] = "Profili" -- Needs review
La["Right Click"] = "Click Destro" -- Needs review
La["Show"] = "Mostra" -- Needs review
La["Show/Hide the Paste window"] = "Mostra/Nascondi la finestra di Paste" -- Needs review
La["Toggle debugging output"] = "Attiva i messaggi sviluppatore" -- Needs review
La["to toggle window"] = "per attivare la finestra" -- Needs review
La["Use %s to paste the clipboard into this box"] = "Usa %s per incollare gli appunti in questo riquadro" -- Needs review
La["You must select a whisper target!"] = "Devi selezionare qualcuno a cui sussurrare!" -- Needs review

end