AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")
include("testhud.lua")

function GM:PlayerInitialSpawn(ply)
	ply:SetNWString("currentAnimal", "null")
end

function GM:PlayerSpawn(ply)
    ply:Say('huh? world')
    ply:SetGravity(0.8)
    baseAnimal:setPlayer(ply)
    ply:Give("weapon_physgun")
end

function GM:OnNPC(npc, attacker, inflictor)
    
end

function GM:PlayerDeath(player, inflictor, attacker)

end
