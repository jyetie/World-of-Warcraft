--## Item Level plugin (use this as an example) ##--
ILVL_Settings = {false,false}
function ItemLevel(Name,ID,Rarity,ItemLevel,LevelReq,Type,SubType,StackCould,EquipLoc,Texture,SellPrice)
	if (not ILVL_Settings[1] or (ILVL_Settings[1] and  ({
	["Armor"]=1,["Weapon"]=1})[Type])) and (not ILVL_Settings[2]
	or (ILVL_Settings[2] and ItemLevel > 1)) then
		INA_RemoveLineByMatch(INOTE_Locale["ilvl.match"]);
		return format(INOTE_Locale["ilvl.display"],ItemLevel);
	end
end
INA_Register("Item Level","f300dd",ItemLevel,"ilvl",INOTE_Locale["itemlevel"]);
