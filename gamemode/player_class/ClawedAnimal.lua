include("FelineAnimal.lua")

ClawedAnimal = Animal:new({DisplayName = 'Clawed'})

function ClawedAnimal:loadout (ply)
    ply:Give("weapon_crowbar")
end

Hawk = ClawedAnimal:new(FlyingAnimal:new({DisplayName = 'Hawk', FlySpeed = '500'}))
Hawk.Playable = true