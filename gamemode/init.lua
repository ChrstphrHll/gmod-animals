AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")
include("testhud.lua")

function GM:PlayerInitialSpawn(ply)
	ply:SetNWString("currentAnimal", "")
    ply:SetNWInt('karma', 0)
end

function GM:PlayerSpawn(ply)
    ply:SetGravity(0.8)
    FelineAnimal:setPlayer(ply)
end

function GM:OnNPC(npc, attacker, inflictor)
    
end

util.AddNetworkString("f4menu")

function GM:PlayerDeath(player, inflictor, attacker)
    net.Start("f4menu")
    net.Send(player)
end


function GM:ShowSpare2(ply)
    net.Start("f4menu")
    net.Send(ply)
end
