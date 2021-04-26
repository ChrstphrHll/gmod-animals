AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")
include("testhud.lua")

--Called the first time a player spawns
function GM:PlayerInitialSpawn(ply)
    print(ply:Nick() .. ' just spawned for the first time')
	ply:SetNWString("currentAnimal", "Admin")
    ply:SetNWInt('karma', 0)
end

--Called each time a player spawns
--Handles setting the player's class
function GM:PlayerSpawn(ply)
    ply:SetGravity(0.8)
    animalToSet = ImplementedAnimals[ply:GetNWString("currentAnimal")]
    print(animalToSet.DisplayName)
    animalToSet:setPlayer(ply)
end

function GM:OnNPC(npc, attacker, inflictor)
    
end

--Communicates to Client to open class change menu
util.AddNetworkString("f4menu")

function GM:PlayerDeath(player, inflictor, attacker)
    net.Start("f4menu")
    net.Send(player)
end

--For debugging purposes
function GM:ShowSpare2(ply)
    net.Start("f4menu")
    net.Send(ply)
end

--Recieves communication about class change selections
util.AddNetworkString( "ClientClassInfo" )
 
net.Receive( "ClientClassInfo", function( len, ply ) 
    local karma = net.ReadUInt( 32 ) 
    PrintMessage( HUD_PRINTTALK, ply:Nick() .. " now has " .. karma .. " karma!" )
    ply:SetNWInt('karma', karma)

    local class = net.ReadString()
    PrintMessage( HUD_PRINTTALK, ply:Nick() .. " is now a " .. class .. "!" )
    ply:SetNWString('currentAnimal', class)
 end )
