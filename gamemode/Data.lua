// data class
// used to simplifly data editing

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