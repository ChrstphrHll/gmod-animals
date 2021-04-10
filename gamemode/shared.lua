GM.Name = "Animals"
GM.Autho = "Best390Group"
GM.Email = "N?A"
GM.Website = "NA"

DeriveGamemode("sandbox")

AddCSLuaFile("player_class/animal.lua")
include("player_class/animal.lua")

function GM:PlayerSpawn(ply)
    ply:Say('huh? world')
    player_manager.SetPlayerClass( ply, "player_custom" )
    -- ply:SetGravity(0)
    -- ply:SetMaxHealth(104)
    -- ply:SetRunSpeed(500)
    -- ply:SetWalkSpeed(30)
    -- ply:Give("weapon_physgun")
end

function GM:Initialize()
    --dostudff
end