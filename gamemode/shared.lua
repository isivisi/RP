GM.Name 	= "skeleton-gamemode"
GM.Author 	= "Isi and Schooled"
GM.Website 	= "www.impulse-gamers.com/forums"

function GM:Initialize()

	self.BaseClass.Initialize( self )
	
end

CivMdl = { "models/player/Group01/Male_01.mdl",
"models/player/Group01/Male_02.mdl",
"models/player/Group01/Male_03.mdl",
"models/player/Group01/Male_04.mdl",
"models/player/Group01/Male_05.mdl",
"models/player/Group01/Male_06.mdl",
"models/player/Group01/Male_07.mdl",
"models/player/Group01/Male_08.mdl",
"models/player/Group01/Male_09.mdl"
 }

team.SetUp(1, "Civilian", Color(255, 0, 0)) // Civilian Team
team.SetUp(2, "Police", Color(51, 51, 255)) // Police Team


util.PrecacheModel("models/player/Group01/Male_01.mdl")
util.PrecacheModel("models/player/Group01/Male_02.mdl")
util.PrecacheModel("models/player/Group01/Male_03.mdl")
util.PrecacheModel("models/player/Group01/Male_04.mdl")
util.PrecacheModel("models/player/Group01/Male_05.mdl")
util.PrecacheModel("models/player/Group01/Male_06.mdl")
util.PrecacheModel("models/player/Group01/Male_07.mdl")
util.PrecacheModel("models/player/Group01/Male_08.mdl")
util.PrecacheModel("models/player/Group01/Male_09.mdl")
util.PrecacheModel("models/player/Police.mdl") 
