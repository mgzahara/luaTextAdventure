--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function schenninit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["schenn"] = {[0] = myNumber, [1] = 1};
	mapping["Schenn"] = {[0] = myNumber, [1] = 1};
	mapping["giant"] = {[0] = myNumber, [1] = 1};
	mapping["the giant"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "evil giant Schenn", [1] = 51, [2] = 0, [3] = talkSchenn, [4] = tickSchenn};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkSchenn(arg, target)

	local mynum = mapping["schenn"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print(myStuff[0].." is deep in thought")
		return 0
	end
end

function tickSchenn()
--[[ Used if this person should do something on their own ]]--
	
end

