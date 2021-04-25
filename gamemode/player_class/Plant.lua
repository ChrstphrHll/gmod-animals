include('ClawedAnimal.lua')

Plant = Animal:new({DisplayName = 'Plant', Lifespan = 9999999, WalkSpeed = 0, RunSpeed = 0})
Plant.GrowthTime = 10 
Plant.GrowthAmount = 5

function Plant:extraSet(ply)
    timer.Create( ply:UserID() .. 'plantgen', self.GrowthTime, 0, function() self:handleKarma(ply) end)
end

function Plant:specialAbility(forPlayer)
    hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
        if (button == 17 and forPlayer == ply) then --if player clicks 17 (g)
            --add specific things to be done upon g press here
            print( ply:Nick() .. " pressed " .. button .. ' as a plant type')
            timer.Remove(ply:UserID() .. 'plantgen')
            ply:Kill()
        end
    end)
end

function Plant:handleKarma(ply)
    local currentKarma = ply:GetNWInt('karma')
    local newKarma = currentKarma + self.GrowthAmount
    ply:SetNWInt('karma', newKarma)
    PrintMessage( HUD_PRINTTALK, ply:Nick() .. " has gained" .. self.GrowthAmount .. " karma from being a " .. self.DisplayName .. "!" )
end

Flower = Plant:new({
    DisplayName = 'Flower',
    KarmaCost = 50,
    -- GrowthTime = 3,
    -- GrowthAmount = 1,
    Playable = true
})

Cactus = Plant:new({
    DisplayName = 'Cactus',
    KarmaCost = 124,
    GrowthTime = 30,
    GrowthAmount = 5,
    Playable = true
})

function Cactus:loadout (ply)
    ply:Give("weapon_crossbow")
end

OakTree = Plant:new({
    DisplayName = 'Oak Tree',
    KarmaCost = 500,
    GrowthTime = 60,
    GrowthAmount = 500,
    Playable = true
})

print(Flower.setPlayer)