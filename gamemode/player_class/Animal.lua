

--Table that will contain all of our various classes
--Constructor adds them automatically
ImplementedAnimals = {}

--Base atributes of an animal, a lot of this will probably
--get cut once we know which ones go unused
Animal = {
    DisplayName = 'Animal',
    WalkSpeed = 400,
    RunSpeed = 600,
    CrouchedWalkSpeed = 0.3,
    DuckSpeed = 0.3,
    UnDuckSpeed = 0.3,
    JumpPower = 200,
    CanUseFlashlight = false,
    MaxHealth = 100,
    MaxArmor = 0,
    StartHealth = 100,
    StartArmor = 0,
    DropWeaponOnDie = false,
    TeammateNoCollide = true,
    AvoidPlayers = true,
    Lifespan = 10,
    Size = 1,
    KarmaCost = 10,
    AbilityDescription = 'NA',
    Playable = false,
    UseVMHands = true
}

-- --If a class wants to set extra things they would do so
-- --by overriding this function
-- function Animal:extraSet(ply)
--     --fuction to set any extra parameters outside of baseanimal

-- end

-- --Each animal's special ability will be set by this function
-- function Animal:specialAbility(forPlayer)
--     print('oh you better belive im seeting a special ability')
--     hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
--         if (button == 17 and forPlayer == ply) then --if player clicks 17
--             --add specific things to be done upon g press here
--             print( ply:Nick() .. " pressed " .. button )
--         end
--     end)
-- end 

--Called when a player spawns in, applies all of the animals
--atributes to the player and starts the lifespan timer
function Animal:setPlayer (ply)
    print('Setting player to be ' .. self.DisplayName)

    --function that sets all the properties of a player
    ply:SetMaxHealth(self.MaxHealth)
    ply:SetRunSpeed(self.RunSpeed)
    ply:SetWalkSpeed(self.WalkSpeed)
    ply:SetJumpPower(self.JumpPower)
    ply:SetCrouchedWalkSpeed(self.CrouchedWalkSpeed)
    ply:SetDuckSpeed(self.DuckSpeed)

    --ply:SetNWString('currentAnimal', self.DisplayName)
    ply:SetModelScale( self.Size, 0 )
    timer.Create( ply:UserID() .. 'lifespan', self.Lifespan, 1, function() self:handleKarma(ply) end)

    if (self.extraSet) then 
        print('Setting a little something extra')
        self:extraSet(ply)
    end
    if (self.specialAbility) then
        print('Setting a specialAbility')
        self:specialAbility(ply)
    end
    if (self.loadout) then
        print('Setting the loadout')
        self:loadout(ply)
    end

    //TODO: add setting models
    //ply:SetModel(  )

end

-- Currently this just kills the player but 
-- is overridden by plants, who are immortal
function Animal:handleKarma(ply)
    ply:Kill()
end 

-- --If an animal needs a weapon do it here
-- function Animal:loadout (ply)
--     -- ply:Give("weapon_crossbow")
-- end

--Constructor for new Animal Classes
function Animal:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    ImplementedAnimals[o.DisplayName] = o
    print('added ' .. o.DisplayName .. 'to the table')
    return o
end

--Starting animal
Worm = Animal:new({
    DisplayName = 'Worm',
    WalkSpeed = 50,
    RunSpeed = 75,
    Size = 0.1,
    Playable = true,
    KarmaCost = 0
})

