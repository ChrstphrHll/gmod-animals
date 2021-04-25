include('FlyingAnimal.lua')

FelineAnimal = Animal:derived({DisplayName = 'FelineAni', Lifespan = 20})

function FelineAnimal:specialAbility(forPlayer)
    hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
        if (button == 17 and forPlayer == ply) then --if player clicks 17 (g)
            --add specific things to be done upon g press here
            print( ply:Nick() .. " pressed " .. button .. ' as a feline type')
            currentVector = ply:GetAimVector()
            newVector = Vector(currentVector.x * self.Pounce, currentVector.y * self.Pounce, 0)
            ply:SetVelocity(newVector)
        end
    end)
end

CatAnimal = FelineAnimal:new({
    DisplayName = 'Cat',
    Pounce = 200,
    WalkSpeed = 250,
    RunSpeed = 1000,
    Size = 0.5,
    Playable = true,
    KarmaCost = 50
})

TigerAnimal = FelineAnimal:new({
    DisplayName = 'Tiger',
    Pounce = 1000,
    WalkSpeed = 500,
    RunSpeed = 2000,
    Size = 1,
    Playable = true,
    KarmaCost = 100
})
