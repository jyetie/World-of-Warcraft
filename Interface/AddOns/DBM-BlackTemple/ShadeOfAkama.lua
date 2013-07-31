local mod	= DBM:NewMod("Akama", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 444 $"):sub(12, -3))
mod:SetCreatureID(23421, 22841, 23215, 23216)
mod:SetModelID(21357)
mod:SetZone()

mod:RegisterCombat("combat")
mod:SetMinCombatTime(30)

mod:RegisterEventsInCombat(
	"UNIT_DIED"
)

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 22841 then
		DBM:EndCombat(self)
	end
end