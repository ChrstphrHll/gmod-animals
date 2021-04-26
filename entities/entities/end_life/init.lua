AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include ("shared.lua")

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
    animalToSet = ImplementedAnimals[activator:GetNWString("currentAnimal")]

    function animalToSet:specialAbility(forPlayer)
        print('custom ability: move to next life using G')
        hook.Add( "PlayerButtonDown", "Special" .. forPlayer:Nick(), function( ply, button )
            if (button == 17 and forPlayer == ply) then --if player clicks 17
                ply:Kill()
            end
        end)
    end

    function animalToSet:getAbilityDescription()
        return "Respawn immediately."
    end

    animalToSet:setPlayer(activator)
end

function ENT:Think()
    -- Called every tick
end