local ADDON_NAME, addon = ...
local L = {}

L["Session"] = "Session"
L["Jumps"] = "Jumps"

local locale = (GetLocale())

if locale == "frFR" then
L["Session"] = "Session"
L["Jumps"] = "Sauts"

elseif locale == "deDE" then
L["Session"] = "Sitzung"
L["Jumps"] = "Sprungs"

elseif locale == "itIT" then 
L["Session"] = "Sessione"
L["Jumps"] = "Saltos"

elseif locale == "ptBR" then 
L["Session"] = "Sessão"
L["Jumps"] = "Saltos"

elseif locale == "esMX" or locale == "esES" then
L["Session"] = "Sesión"
L["Jumps"] = "Saltos"

elseif locale == "ruRU" then
L["Session"] = "сессия"
L["Jumps"] = "скачок"

elseif locale == "koKR" then
L["Session"] = "세션"
L["Jumps"] = "뛰어 넘다"

elseif locale == "zhCN" then
L["Session"] = "会话"
L["Jumps"] = "跳跃"

elseif locale == "zhTW" then
L["Session"] = "會話"
L["Jumps"] = "跳躍"

end

addon.L = addon.L or {}
for k,v in pairs(L) do addon.L[k] = v end
