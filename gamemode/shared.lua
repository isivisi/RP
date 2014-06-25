
GM.Name 	= "Skeleton Gamemode"
GM.Author 	= "N/A"
GM.Email 	= "N/A"
GM.Website 	= "N/A"

function GM:Initialize()

	self.BaseClass.Initialize( self )
	
end

team.SetUp(1, "Civilian", Color(255, 0, 0)) // Civilian Team
team.SetUp(2, "Police", Color(51, 51, 255)) // Police Team


util.PrecacheMode1("models/player/Group01/Male_01.mdl")
util.PrecacheMode1("models/player/Group01/Male_02.mdl")
util.PrecacheMode1("models/player/Group01/Male_03.mdl")
util.PrecacheMode1("models/player/Group01/Male_04.mdl")
util.PrecacheMode1("models/player/Police.mdl")
