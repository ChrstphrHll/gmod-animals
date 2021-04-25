include("FelineAnimal.lua")
include("Hybrid.lua")

Clawed = {}
function Clawed:loadout (ply)
    ply:Give("weapon_crowbar")
end

Hawk = createClass(ClawedAnimal, FlyingAnimal)
Hawk.Playable = true
Hawk.KarmaCost = 74
Hawk.DisplayName = 'Hawk'
Hawk.FlySpeed = '500'

-- Hawk = ClawedAnimal:new(FlyingAnimal:new({DisplayName = 'Hawk', FlySpeed = '500'}))
-- Hawk.Playable = true