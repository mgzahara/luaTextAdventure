--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function pilotinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["pilot"] = {[0] = myNumber, [1] = 1};
	mapping["maverick"] = {[0] = myNumber, [1] = 1};
	mapping["Maverick"] = {[0] = myNumber, [1] = 1};
	mapping["tom"] = {[0] = myNumber, [1] = 1};
	mapping["Tom"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Maverick", [1] = 18, [2] = 0, [3] = talkPilot, [4] = tickPilot};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkPilot(arg, target)

	local mynum = mapping["pilot"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print(myStuff[0].." wants you to leave him alone so he can fly this thing")
	end
end

function tickPilot()
--[[ Used if this person should do something on their own ]]--
	
end

