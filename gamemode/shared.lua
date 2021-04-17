GM.Name = "Animals"
GM.Autho = "Best390Group"
GM.Email = "N?A"
GM.Website = "NA"

DeriveGamemode("sandbox")
AddCSLuaFile("player_class/animal.lua")
include("player_class/animal.lua")


function GM:Initialize()
    --dostudff
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
end