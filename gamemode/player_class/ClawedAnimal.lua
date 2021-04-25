include("FelineAnimal.lua")
include("Hybrid.lua")

Clawed = Animal:new({DisplayName = 'Clawed'})
function Clawed:loadout (ply)
    ply:Give("weapon_crowbar")
end

ClawedFlyer = FlyingAnimal:new({DisplayName = 'ClawedFlyer'})

-- Hawk = ClawedFlyer:new({
--     DisplayName = 'Hawk',
--     Playable = true,
--     KarmaCost = 74,
--     FlySpeed = '500'
-- })

print(ClawedFlyer.loadout)
print(ClawedFlyer.specialAbility)