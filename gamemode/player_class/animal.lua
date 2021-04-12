Account = { balance=0,
            withdraw = function (self, v)
                            self.balance = self.balance - v
                        end,
            neat = 13
            }

function Account:deposit (v)
    self.balance = self.balance + v
end

function Account:new (o)
    o = o or {}   -- create object if user does not provide one
    setmetatable(o, self)
    self.__index = self
    return o
end


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
    UseVMHands = true
}

function Animal:setPlayer (ply)
    ply:SetMaxHealth(self.MaxHealth)
    ply:SetRunSpeed(self.RunSpeed)
    ply:SetWalkSpeed(self.WalkSpeed)
    ply:SetJumpPower(self.JumpPower)
    ply:SetCrouchedWalkSpeed(self.CrouchedWalkSpeed)
end

function Animal:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

baseAnimal = Animal:new()
print(baseAnimal.WalkSpeed)
print(baseAnimal.RunSpeed)
