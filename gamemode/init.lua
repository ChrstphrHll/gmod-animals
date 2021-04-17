AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")

local PANEL = {}

function PANEL:Init()
    self:SetSize( 100, 100 )
    self:Center()
end

function PANEL:Paint( w, h )
    draw.RoundedBox( 0, 0, 0, w, h, color_black )
end

vgui.Register( "MyFirstPanel", PANEL, "Panel" )

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
