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
	d.loc = loc // this would be the location of the data, ex "c:/gmod/garrysmod/gamemodes/RP/data
	end)
	
function Data:setUserMoney(userid, amount)
	// to do

end

function Data:setUserJob(userid, job)
	// to do

end

function Data:addUserItem(userid, item)
	// to do

end

function Data:removeUserItem(userid, item)
	// to do

end

function Data:getJobList()
	// to do

end