AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")

include("shared.lua")
include("testhud.lua")

local hide = {
	["CHudHealth"] = true,
	["CHudBattery"] = true
}

hook.Add( "HUDShouldDraw", "HideHUD", function( name )
	if ( hide[ name ] ) then
		return false
	end

	-- Don't return anything here, it may break other addons that rely on this hook.
end )

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
