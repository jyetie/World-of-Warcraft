local mod = DBM:NewMod("Thorngrin", "DBM-Party-BC", 14)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 436 $"):sub(12, -3))

mod:SetCreatureID(17978)
mod:SetModelID(14416)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED"
)

local warnSacrifice       = mod:NewTargetAnnounce(34661)
local timerSacrifice      = mod:NewTargetTimer(8, 34661)

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 34661 then
		warnSacrifice:Show(args.destName)
		timerSacrifice:Start(args.destName)
	end
end