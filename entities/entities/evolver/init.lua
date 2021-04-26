AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include ("shared.lua")
include("../../../gamemode/player_class/Animal.lua")


function ENT:Initialize()
    self:SetModel(self.Model)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    self:SetUseType(SIMPLE_USE)

    local phys = self:GetPhysicsObject()

    if (IsValid(phys)) then
        phys:Wake()
    end

end

function ENT:SpawnFunction(ply, tr, ClassName)
    if (!tr.Hit) then return end

    local SpawnPos = ply:GetShootPos() + ply:GetForward() * 80

    local ent = ents.Create(ClassName)
    ent:SetPos(SpawnPos)
    ent:Spawn()
    ent:Activate()

    return ent
end

function ENT:Use(activator, caller)
    -- Whenever a player uses the entity
    local ply = activator
    local targetAnimal = ply:GetNWString('currentAnimal')
    animalToEvolve = ImplementedAnimals[targetAnimal]
    animalToEvolve.Lifespan = animalToEvolve.Lifespan + self.LifeBonus
    PrintMessage( HUD_PRINTTALK, targetAnimal .. " had its lifespan increased by " .. self.LifeBonus)
end

function ENT:Think()
    -- Called every tick
end