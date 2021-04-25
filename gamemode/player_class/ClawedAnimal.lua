include("FelineAnimal.lua")
include("Hybrid.lua")

Clawed = {}
function Clawed:loadout (ply)
    ply:Give("weapon_crowbar")
end

--ClawedFlyer = Clawed:derived(FlyingAnimal:derived({DisplayName = 'ClawedFlyer'}))
ClawedFlyer = createClass(FlyingAnimal, Clawed)

Hawk = ClawedFlyer:new({
    DisplayName = 'Hawk',
    Playable = true,
    KarmaCost = 74,
    FlySpeed = '500'
})

print(ClawedFlyer.loadout)
print(ClawedFlyer.specialAbility)