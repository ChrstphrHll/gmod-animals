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