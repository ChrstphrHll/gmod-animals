AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function GM:PlayerSpawn(ply)
    ply:Say('huh? world')
    ply:SetGravity(0.8)
    ply:SetMaxHealth(104)
    ply:SetRunSpeed(baseAnimal.runSpeed)
    ply:SetWalkSpeed(baseAnimal.walkSpeed)
    ply:Give("weapon_physgun")
end

function GM:OnNPC(npc, attacker, inflictor)
    
end

function GM:PlayerDeath(player, inflictor, attacker)

end
