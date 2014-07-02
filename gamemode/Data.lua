// data class
// used to simplifly data editing

/* data stucture:
	each user has 2 files, info and items. info contains money, job and other simple things and items contains all the items they have.
	
	for each player:
		-- info --
		money\n
		job\n
		
		-- items -- 
		itemname\n
		itemname\n 
		etc...
	
*/

Data = class(function(d, loc)
	d.loc = string.sub( debug.getinfo(1).short_src, 1, string.len(debug.getinfo(1).short_src)-*** ) + loc // this would be the location of the data, ex "c:/gmod/garrysmod/gamemodes/RP/data
	end)
	
// Gets a data file for a specific user
function Data:getFile(ply, fileName, usage)

	local steamFileName = d.loc + "/" + fileName .. "_" .. ply:SteamID():gsub(':', '') // adds the steamid after the name of the file to make it unique to players
	local dataFile = io.open(steamFileName, usage)
	
	if dataFile == nil then
	
		dataFile = io.open(steamFileName, 'w')
		
		// write empty files
		
		io.output(dataFile)
		
		if fileName == "info" then
		
			io.write("0\n") // default money
			io.write("NONE\n") // default no job
			
			io.close(dataFile)
			dataFile = io.open(steamFileName, usage)
		
		end
		
		if fileName == "items" then
		
			io.close(dataFile)
			dataFile = io.open(steamFileName, usage)
		
		end
		
	end
		
	return dataFile

end
	
function Data:getUserMoney(ply, amount)
	
	local dataFile = Data:getFile(ply, "info", 'r')
	io.input(dataFile)
	local money = tonumber(io.read()) // gets first line with money details
	
	io.close(dataFile)
	
	return money

end

function Data:setUserJob(ply, job)
	// to do

end

function Data:addUserItem(ply, item)
	// to do

end

function Data:removeUserItem(ply, item)
	// to do

end

function Data:getJobList()
	// to do

end