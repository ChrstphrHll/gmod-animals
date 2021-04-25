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

function lookatmetaof(o)
    for key,value in pairs(o) do
        print(key, value)
        if key == '__index' then
            lookatmetaof(value)
        end
    end
end

lookatmetaof(Hawk)

Hawk.test()
-- print(ClawedFlyer.loadout)
-- print(ClawedFlyer.specialAbility)