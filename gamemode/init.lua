AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")
include("testhud.lua")

function GM:PlayerInitialSpawn(ply)
    print(1)
	--ply:SetNWString("currentAnimal", "nujkuyjhgfdhjkll")
    ply:SetNWInt('karma', 0)
end

function GM:PlayerSpawn(ply)
    print(2)
    ply:Say('huh? world')
    ply:SetGravity(0.8)
    FelineAnimal:setPlayer(ply)
end

function GM:OnNPC(npc, attacker, inflictor)
    
end

function GM:PlayerDeath(player, inflictor, attacker)

end

util.AddNetworkString("f4menu")

function GM:ShowSpare2(ply)
    net.Start("f4menu")
    net.Send(ply)
end
