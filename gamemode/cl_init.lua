include("shared.lua")
include("testhud.lua")

--Menu seen upon death that makes the player select what animal they will be next
net.Receive("f4menu", function()
    if (!Frame) then
        local selected = nil
        local ply = LocalPlayer()
        local plyCurrentKarma = ply:GetNWInt('karma')

        local Frame = vgui.Create( "DFrame" )
        Frame:SetTitle( "Karma Store" )
        Frame:SetSize( 300,300 )
        Frame:Center()			
        Frame:MakePopup()
        Frame.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
            draw.RoundedBox( 0, 0, 0, w, h, Color( 231, 76, 60, 150 ) ) -- Draw a red box instead of the frame
        end

        local DComboBox = vgui.Create( "DComboBox", Frame )
        DComboBox:SetPos( 5, 30 )
        DComboBox:SetSize( 100, 20 )
        DComboBox:SetValue( "Availible Animals" )
        for k in pairs(ImplementedAnimals) do 
            AnimalObject = ImplementedAnimals[k]
            if (plyCurrentKarma >= AnimalObject.KarmaCost and AnimalObject.Playable) then
                DComboBox:AddChoice( AnimalObject.DisplayName ) 
            end
        end

        DComboBox.OnSelect = function( self, index, value )
            selected = value
        end

        local Button = vgui.Create("DButton", Frame)
        --Button:SetText( "Click me I'm pretty!" )
        Button:SetText( 'Select Animal and Respawn' )
        Button:SetTextColor( Color(255,255,255) )
        Button:SetPos( 100, 100 )
        Button:SetSize( 100, 30 )
        Button.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) ) -- Draw a blue button
        end

        Button.DoClick = function()
            if (selected) then
                net.Start( "ClientClassInfo" )
                print('it cost this ' .. ImplementedAnimals[selected].KarmaCost)
                net.WriteUInt( plyCurrentKarma - ImplementedAnimals[selected].KarmaCost, 16 ) -- Max karma is 65,536
                net.WriteString(selected)
                net.SendToServer()
                Frame:Close()
            end
        end

        Frame:ShowCloseButton(false)
        Frame:SetDeleteOnClose( true )
    end
end)