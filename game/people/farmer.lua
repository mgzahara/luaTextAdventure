--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function farmerinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["farmer"] = {[0] = myNumber, [1] = 1};
	mapping["the farmer"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "some random farmer", [1] = 12, [2] = 0, [3] = talkFarmer, [4] = tickFarmer};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkFarmer(arg, target)

	local mynum = mapping["farmer"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("the farmer glares at you")
		return 0
	end
end

function tickFarmer()
--[[ Used if this person should do something on their own ]]--
	
end

