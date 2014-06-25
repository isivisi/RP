include( 'shared.lua' )

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

surface.CreateFont("Health",
	{
		size = 250,
		weight = 1000,
		antialias = true,
		shadow = false,
		font = "Arial"
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
	
	draw.RoundedBox(5, 20, 15, 300, 150, Color(40, 40, 40, 205))
	draw.RoundedBox(0, 25, 25, 290, 25, Color(5, 200, 55, 100))
	
	draw.DrawText("Job title", "HudFont", 27, 25, Color(15, 15, 15, 255))
	
	draw.DrawText("Cash: %$", "HudFont", 27, 55, Color(15, 15, 15, 255))
	
	draw.DrawText("+", "Health", 25, ScrH() - 25, Color(0, 255, 0, 255)) 
	
end
	
	