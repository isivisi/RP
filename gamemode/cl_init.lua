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
	local player = localPlayer()
	local team = localPlayer:team()
	
	// will add text for team and job etc...
	
end
	
	