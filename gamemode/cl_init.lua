include("shared.lua")
include("testhud.lua")

net.Receive("f4menu", function()
    if (!Frame) then
        local ply = LocalPlayer()
        local Frame = vgui.Create( "DFrame" )
        Frame:SetTitle( "Karma Store" )
        Frame:SetSize( 300,300 )
        Frame:Center()			
        Frame:MakePopup()
        Frame.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
            draw.RoundedBox( 0, 0, 0, w, h, Color( 231, 76, 60, 150 ) ) -- Draw a red box instead of the frame
        end
                
        local Button = vgui.Create("DButton", Frame)
        --Button:SetText( "Click me I'm pretty!" )
        Button:SetText( ply:Nick() )
        Button:SetTextColor( Color(255,255,255) )
        Button:SetPos( 100, 100 )
        Button:SetSize( 100, 30 )
        Button.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) ) -- Draw a blue button
        end
        Button.DoClick = function()
            print( "I was clicked!" )
        end

        local DComboBox = vgui.Create( "DComboBox", Frame )
        DComboBox:SetPos( 5, 30 )
        DComboBox:SetSize( 100, 20 )
        DComboBox:SetValue( "Availible Animals" )
        print('Player karma ' .. ply:GetNWInt('karma'))
        for i,v in ipairs(ImplementedAnimals) do 
            print(v.DisplayName .. ' ' .. v.KarmaCost)
            if (ply:GetNWInt('karma') >= v.KarmaCost) then
                DComboBox:AddChoice( v.DisplayName ) 
            end
        end

        DComboBox.OnSelect = function( self, index, value )
            print( value .." was selected at index " .. index )
        end

        Frame:ShowCloseButton(false)
        Frame:SetDeleteOnClose( true )
    end
end)