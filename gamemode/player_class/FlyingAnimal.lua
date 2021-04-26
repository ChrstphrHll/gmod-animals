include('Animal.lua')

FlyingAnimal = Animal:derived({DisplayName = 'FlyingAni', FlySpeed = 500})

function FlyingAnimal:specialAbility(forPlayer)
    hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
        if (button == 17 and forPlayer == ply) then --if player clicks 17
            --add specific things to be done upon g press here
            print( ply:Nick() .. " pressed " .. button .. ' as a flying type')
            ply:SetVelocity(Vector(0,0,self.FlySpeed))
        end
    end)
end

function FlyingAnimal:getAbilityDescription()
    return "I can fly!"
end

function FlyingAnimal:test()
    print('this is flyinganimals test')
end

ButterFly = FlyingAnimal:new({
    DisplayName = 'Butterfly',
    WalkSpeed = 1000,
    RunSpeed = 250,
    FlySpeed = 1000,
    Size = 0.1,
    Playable = true,
    KarmaCost = 24
})



Alien = FlyingAnimal:new({
    DisplayName = 'Alien',
    WalkSpeed = 1000,
    RunSpeed = 2000,
    Pounce = 1000,
    FlySpeed = 1000,
    Size = 1,
    Playable = true,
    KarmaCost = 1000,
    Lifespan = 100,
    MaxHealth = 1000
})

function Alien:specialAbility(forPlayer)
    hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
        if (button == 19 and forPlayer == ply) then
            ply:SetVelocity(Vector(0,0,self.FlySpeed))
        end
        if (button == 21 and forPlayer == ply) then
            ply:SetVelocity(Vector(0,0,-self.FlySpeed/2))
        end
        if (button == 17 and forPlayer == ply) then
            currentVector = ply:GetAimVector()
            newVector = Vector(currentVector.x * self.Pounce, currentVector.y * self.Pounce, currentVector.z * self.Pounce)
            ply:SetVelocity(newVector)
        end
    end)
end

function Alien:getAbilityDescription()
    return "Fly and dash with i, k, and g"
end
