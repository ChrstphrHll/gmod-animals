--dostudff
local hide = {
    ["CHudHealth"] = true,
    ["CHudBattery"] = true
}

hook.Add( "HUDShouldDraw", "HideHUD", function( name )
    if ( hide[ name ] ) then
        return false
    end
end )

function HUD()

local client = LocalPlayer()

    if !client:Alive() then
        return
    end

    local healthWidth = (client:Health() / client:GetMaxHealth()) * 100

    -- hud box for health and armor
    draw.RoundedBox(0,0, ScrH() - 100, 250, 100, Color(30,30,30,150))        

    -- health bar
    draw.RoundedBox(0,10,ScrH()-70,225,15,Color(0,255,0,100))
    draw.RoundedBox(0, 10, ScrH()-70, math.Clamp(healthWidth,0,100)*2.27, 15, Color(0,255,0,255))
    draw.RoundedBox(0, 10, ScrH()-70, math.Clamp(healthWidth,0,100)*2.27, 13, Color(255,0,0,255))

    -- armor bar
    draw.RoundedBox(0,10,ScrH()-30,225,15,Color(0,0,255,100))
    draw.RoundedBox(0, 10, ScrH()-30, math.Clamp(client:Armor(),0,100)*2.27, 15, Color(5,255,255,255))
    draw.RoundedBox(0, 10, ScrH()-30, math.Clamp(client:Armor(),0,100)*2.27, 13, Color(0,0,255,255))

    -- health and armor
    draw.SimpleText("Health: ".. client:Health().."%", "DermaDefaultBold", 10, ScrH() - 90, Color(5,255,255,255), 0, 0)
    draw.SimpleText("Armor: ".. client:Armor().."%", "DermaDefaultBold", 10, ScrH() - 50, Color(5,255,255,255), 0, 0)

    -- hud box for current Animal type
    draw.RoundedBox(0,0, ScrH() - 200, 250, 90, Color(30,30,30,150))
    draw.SimpleText("Current Animal: " .. client:GetNWInt('karma'), "DermaDefaultBold", 10, ScrH() - 190, Color(5,255,255,255), 0, 0)
    

end
hook.Add("HUDPaint","TestHud",HUD)