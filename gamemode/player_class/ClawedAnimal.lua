include("FelineAnimal.lua")
include("Hybrid.lua")

Clawed = Animal:derived({DisplayName = 'Clawed'})
function Clawed:loadout (ply)
    ply:Give("weapon_crowbar")
end

ClawedFlyer = Clawed:derived(FlyingAnimal:derived({DisplayName = 'ClawedFlyer'}))

Hawk = ClawedFlyer:new({
    DisplayName = 'Hawk',
    Playable = true,
    KarmaCost = 74,
    FlySpeed = '500'
})

Hawk.test()
-- print(ClawedFlyer.loadout)
-- print(ClawedFlyer.specialAbility)