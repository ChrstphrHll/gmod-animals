include("FelineAnimal.lua")
include("Hybrid.lua")

Clawed = Animal:new({DisplayName = 'clawed'})
function Clawed:loadout (ply)
    ply:Give("weapon_crowbar")
end

-- ClawedFlyer = createClass(Clawed, FlyingAnimal)

-- Hawk = ClawedFlyer:new({
--     DisplayName = 'Hawk',
--     Playable = true,
--     KarmaCost = 74,
--     FlySpeed = '500'
-- })

print(Clawed.loadout)