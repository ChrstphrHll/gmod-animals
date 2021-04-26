include("FelineAnimal.lua")
include("Hybrid.lua")

function makeClawed(Animal)
    Animal.loadout = function(ply) ply:Give("weapon_crowbar") end
end

ClawedFlyer = FlyingAnimal:derived({DisplayName = 'ClawedFlyer'})
makeClawed(ClawedFlyer)

ClawedFeline = FelineAnimal:derived({DisplayName = 'ClawedFeline'})
makeClawed(ClawedFeline)

Hawk = ClawedFlyer:new({
    DisplayName = 'Hawk',
    Playable = true,
    KarmaCost = 74,
    FlySpeed = 500
})

Puma = ClawedFeline:new({
    DisplayName = 'Puma',
    Playable = true,
    KarmaCost = 500,
    Pounce = 700
})

-- print(ClawedFlyer.loadout)
-- print(ClawedFlyer.specialAbility)