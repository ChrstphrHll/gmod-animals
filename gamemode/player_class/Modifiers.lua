include("Plant.lua")

function makeClawed(Animal)
    Animal.loadout = 'weapon_crowbar'
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

function makeSpiked(Animal)
    Animal.loadout = 'weapon_crossbow'
end

Cactus = Plant:new({
    DisplayName = 'Cactus',
    KarmaCost = 124,
    GrowthTime = 30,
    GrowthAmount = 5,
    Playable = true
})

makeSpiked(Cactus)

-- Gmod won't let us use glua functions in lambdas 
function makeImmortal(Animal)
    -- Animal.extraSet = function(ply)
    --     timer.Remove(ply:UserID() .. 'lifespan')
    -- end
    Animal.lifespan = 999999999
end

Admin = Plant:new({
    DisplayName = 'Admin',
    RunSpeed = 600,
    WalkSpeed = 400,
    Playable = true,
    loadout = 'weapon_physcannon',
    GrowthAmount = 0,
    GrowthTime = 100000000,
    KarmaCost = 99999
})

-- todo

makeImmortal(Admin)
