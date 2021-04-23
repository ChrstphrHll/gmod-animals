include('Animal.lua')

FelineAnimal = Animal:new({DisplayName = 'FelineAni'})

function FelineAnimal:specialAbility(forPlayer)
    hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
        if (button == 17 and forPlayer == ply) then --if player clicks 17 (g)
            --add specific things to be done upon g press here
            print( ply:Nick() .. " pressed " .. button .. ' as a feline type')
            ply:SetVelocity(Vector(1000,0,0))
        end
    end)
end

CatAnimal = FelineAnimal:new({
    DisplayName = 'Cat',
    WalkSpeed = 1000,
    RunSpeed = 250,
    Size = 0.5,
    Playable = true,
    KarmaCost = 50
})

TigerAnimal = FelineAnimal:new({
    DisplayName = 'Tiger',
    WalkSpeed = 2000,
    RunSpeed = 500,
    Size = 1,
    Playable = true,
    KarmaCost = 100
})
--
-- ImplementedAnimals['Cat'] = Cat
-- ImplementedAnimals['Tiger'] = Tiger
