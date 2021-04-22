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