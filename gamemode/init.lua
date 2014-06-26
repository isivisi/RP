// rp plugin
// authors:
// isivisi, schooled

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( 'shared.lua' )


// Serverside only stuff goes here

/*---------------------------------------------------------
   Name: gamemode:PlayerLoadout( )
   Desc: Give the player the default spawning weapons/ammo
---------------------------------------------------------*/
function GM:PlayerInitialSpawn( pl ) // this is when the player first joins
	pl:SetGravity( 1 ) // Default gravity
	pl:SetWalkSpeed( 220 ) // Default 
	pl:SetRunSpeed( 325 ) // Default
	pl:SetTeam( 1 ) // this will set the player to team 1 by default
end

function GM:PlayerSpawn( pl ) //This is every time after; so if they die and respawn this will occur
	if pl:Team() == 1 then
		pl:SetModel(table.Random(CivMdl))
	end
	if pl:Team() == 2 then
		pl:Give( "weapon_stunstick" )
		pl:Give( "weapon_pistol" )
		pl:Give( "weapon_357" )
		pl:SetModel("models/player/Police.mdl")
	end
end

 function team_1( pl ) 
 
     pl:SetTeam( 1 )
	 pl:Spawn()
	 pl:StripWeapons()
 end 
 
 function team_2( pl ) 
 
     pl:SetTeam( 2 ) 
	 pl:Spawn()
 end 
 
 concommand.Add( "team_1", team_1 )
 concommand.Add( "team_2", team_2 )
