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

function makeImmortal(Animal)
    Animal.extraSet = function(ply)
        timer.Remove(ply:UserID() .. 'lifespan')
    end
end

Admin = Plant:derived({
    DisplayName = 'Admin',
    RunSpeed = 600,
    WalkSpeed = 400,
    Playable = true,
    KarmaCost = 63000
})

makeImmortal(Admin)