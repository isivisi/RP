include( 'shared.lua' )

local money = 0 // the global money the server says the player has

// custom hud font
surface.CreateFont("HudFont",
	{
		font = "DefaultBold",
		size = 25,
		weight = 400,
		antialias = true,
		shadow = false
	}
)

function hidehud(name) -- Removing the default HUD
	
	if name == "CHudHealth" then return false end

end
hook.Add("HUDShouldDraw", "HideOurHud:D", hidehud)


// Clientside only stuff goes here

// custom hud addons
function GM:HUDPaint()
	self.BaseClass:HUDPaint()
	local player = LocalPlayer()
	health = player:Health()
	
	draw.RoundedBox(3, 20, ScrH() - 75, 300, 50, Color(40, 40, 40, 205))
	draw.RoundedBox(3, 25, ScrH() - 70, 290, 40, Color(5, 200, 55, 100))
	draw.RoundedBox(3, 325, ScrH() - 75, 500, 50, Color(40, 40, 40, 205))
	
	draw.DrawText("Job title", "HudFont", 30, ScrH() - 65, Color(15, 15, 15, 255))
	
	draw.DrawText("Cash: %$ | Other: ", "HudFont", 335, ScrH() - 65, Color(15, 15, 15, 255))
	
end
	

function set_team()
 
local frame = vgui.Create( "DFrame" )
frame:SetPos( ScrW() / 2, ScrH() / 2 ) --Set the window in the middle of the players screen/game window
frame:SetSize( 200, 210 ) --Set the size
frame:SetTitle( "Change Team" ) --Set title
frame:SetVisible( true )
frame:SetDraggable( false )
frame:ShowCloseButton( true )
frame:MakePopup()
 
team_1 = vgui.Create( "DButton", frame )
team_1:SetPos( frame:GetTall() / 2, 5 ) --Place it half way on the tall and 5 units in horizontal
team_1:SetSize( 50, 100 )
team_1:SetText( "Team 1" )
team_1.DoClick = function() --Make the player join team 1
    RunConsoleCommand( "team_1" )
end
 
team_2 = vgui.Create( "DButton", frame )
team_2:SetPos( frame:GetTall() / 2, 105 ) --Place it next to our previous one
team_2:SetSize( 50, 100 )
team_2:SetText( "Team 2" )
team_2.DoClick = function() --Make the player join team 2
    RunConsoleCommand( "team_2" )
end
 
end
concommand.Add( "team_menu", set_team )
