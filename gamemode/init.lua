AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")
include("testhud.lua")

function GM:PlayerInitialSpawn(ply)
    -- print(ply:Nick() .. ' just spawned for the first time')
	-- ply:SetNWString("currentAnimal", "Worm")
    -- ply:SetNWInt('karma', 1110)
end

function GM:PlayerSpawn(ply)
    if (ply:GetNWInt('karma', -1) == -1) then
        print(ply:Nick() .. ' just spawned for the first time')
        ply:SetNWString("currentAnimal", "Butterfly")
        ply:SetNWInt('karma', 1110)
    end
    ply:SetGravity(0.8)
    animalToSet = ImplementedAnimals[ply:GetNWString("currentAnimal")]
    print(animalToSet.DisplayName)
    animalToSet:setPlayer(ply)
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
