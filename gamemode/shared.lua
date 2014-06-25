
GM.Name 	= "Skeleton Gamemode"
GM.Author 	= "N/A"
GM.Email 	= "N/A"
GM.Website 	= "N/A"

function GM:Initialize()

	self.BaseClass.Initialize( self )
	
end

team.SetUp(1, "Civilian", Color(255, 0, 0)) // Civilian Team
team.SetUp(2, "Police", Color(51, 51, 255)) // Police Team


util.PrecacheModel("models/player/Group01/Male_01.mdl")
util.PrecacheModel("models/player/Group01/Male_02.mdl")
util.PrecacheModel("models/player/Group01/Male_03.mdl")
util.PrecacheModel("models/player/Group01/Male_04.mdl")
util.PrecacheModel("models/player/Police.mdl")
