include("FelineAnimal.lua")

ClawedAnimal = Animal:new({DisplayName = 'Clawed'})

function giveClaws(ply)
    ply:Give("weapon_crowbar")
end

ClawedAnimal.loadout = giveClaws

Hawk = ClawedAnimal:new(FlyingAnimal:new({DisplayName = 'Hawk', FlySpeed = '500'}))
Hawk.Playable = true