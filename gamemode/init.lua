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
function GM:PlayerInitialSpawn( pl ) -- this is when the player first joins
	pl:SetGravity( 1 ) -- Default gravity
	pl:SetWalkSpeed( 250 ) -- Default 
	pl:SetRunSpeed( 500 ) -- Default
end


function GM:PlayerLoadout( pl ) -- should we commit this to the above function as it is the initial spawn

	pl:GiveAmmo( 255,	"Pistol", 		true ) --I don't think this is necessary if they start witn no weapon
	
	pl:Give( "empty_weapon" ) -- should we make it "weapon_crowbar" ?
end

function GM:PlayerSpawn( pl ) --This is every time after; so if they die and respawn this will occur
		
	pl:Give( "empty_weapon" ) -- Default based on loadout
end
