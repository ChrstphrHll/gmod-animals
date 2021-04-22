AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")
AddCSLuaFile("karmaMenu.lua")

include("shared.lua")
include("testhud.lua")
include("karmaMenu.lua")

function GM:PlayerInitialSpawn(ply)
	--ply:SetNWString("currentAnimal", "nujkuyjhgfdhjkll")
    ply:SetNWInt('karma', 0)
    local Frame = vgui.Create( "DFrame" )
    Frame:SetPos( 5, 5 ) 
    Frame:SetSize( 300, 150 ) 
    Frame:SetTitle( "Name window" ) 
    Frame:SetVisible( true ) 
    Frame:SetDraggable( false ) 
    Frame:ShowCloseButton( true ) 
    Frame:MakePopup()
end

function GM:PlayerSpawn(ply)
    
    ply:Say('huh? world')
    ply:SetGravity(0.8)
    FelineAnimal:setPlayer(ply)
end

function GM:OnNPC(npc, attacker, inflictor)
    
end

function GM:PlayerDeath(player, inflictor, attacker)

end
