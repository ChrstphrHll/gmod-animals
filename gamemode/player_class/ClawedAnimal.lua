include("FelineAnimal.lua")

ClawedAnimal = Animal:new({DisplayName = 'Clawed'})

function ClawedAnimal:loadout (ply)
    ply:Give("weapon_crowbar")
end

Hawk = FlyingAnimal:new(ClawedAnimal:new({DisplayName = 'Hawk', FlySpeed = '500'}))
Hawk.Playable = true