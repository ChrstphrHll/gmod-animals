AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function GM:PlayerSpawn(ply)
    ply:SetGravity(.80)
    ply:SetMaxHealth(104)
    ply:SetRunSpeed(500)
    ply:SetWalkSpeed(30)
    ply:Give("weapon_physgun")
end

function GM:OnNPC(npc, attacker, inflictor)
    
end

function GM:PlayerDeath(player, inflictor, attacker)

end

function GM:PlayerSpawn(ply)
    player_manager.SetPlayerClass( ply, "player_default" )
end