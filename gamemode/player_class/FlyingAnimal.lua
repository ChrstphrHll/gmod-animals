include('Animal.lua')

FlyingAnimal = Animal:new({DisplayName = 'FlyingAni', FlySpeed = 500})

function FlyingAnimal:specialAbility(forPlayer)
    hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
        if (button == 17 and forPlayer == ply) then --if player clicks 17
            --add specific things to be done upon g press here
            print( ply:Nick() .. " pressed " .. button .. ' as a flying type')
            ply:SetVelocity(Vector(0,0,self.FlySpeed))
        end
    end)
end 

ButterFly = FlyingAnimal:new({
    DisplayName = 'Butterfly',
    WalkSpeed = 200,
    RunSpeed = 250,
    FlySpeed = 1000,
    Size = 0.1,
    KarmaCost = 24
})

--ImplementedAnimals[ButterFly.DisplayName] = ButterFly