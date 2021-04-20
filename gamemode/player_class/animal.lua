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
    UseVMHands = true
}

function Animal:extraSet(ply)

end

function Animal:specialAbility(ply)
    print(self.DisplayName .. ' doesn\' have a special ability')
end 

function Animal:setPlayer (ply)
    ply:SetMaxHealth(self.MaxHealth)
    ply:SetRunSpeed(self.RunSpeed)
    ply:SetWalkSpeed(self.WalkSpeed)
    ply:SetJumpPower(self.JumpPower)
    ply:SetCrouchedWalkSpeed(self.CrouchedWalkSpeed)
    ply:SetDuckSpeed(self.DuckSpeed)

    //todo: figure out whats wrong with setNWSTRing
    print(ply)
    ply:SetNWString('currentAnimal', self.DisplayName)
    ply:SetModelScale( self.Size, 0 )
    timer.Create( ply:UserID() .. 'lifespan', self.Lifespan, 1, function() self:handleKarma(ply) end)

    self:extraSet(ply)
end

// We're actually dealing with karma stuff here?
function Animal:handleKarma(ply)
    print(ply:GetNWString( 'currentAnimal' ))
    local hey = ply:GetNWInt('karma')
    print(hey)
    ply:SetNWInt('karma', hey + 10)
    ply:Kill()
end 

function Animal:loadout (ply)
    ply:Give("weapon_physgun")
end

function Animal:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

baseAnimal = Animal:new()
cheeta = Animal:new({RunSpeed = 1000})
print(baseAnimal.WalkSpeed)
print(baseAnimal.RunSpeed)
