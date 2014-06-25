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


// Clientside only stuff goes here

// custom hud addons
function GM:HUDPaint()
	self.BaseClass:HUDPaint()
	local player = LocalPlayer()
	
	draw.RoundedBox(5, 20, 15, 300, 150, Color(40, 40, 40, 205))
	draw.RoundedBox(0, 25, 25, 290, 25, Color(5, 200, 55, 100))
	
	draw.DrawText("Job title", "HudFont", 27, 25, Color(15, 15, 15, 255))
	
end
	
	