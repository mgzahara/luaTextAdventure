--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function heinzinit() -- austria president
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["heinz"] = {[0] = myNumber, [1] = 1};
	mapping["Heinz"] = {[0] = myNumber, [1] = 1};
	mapping["heinz fischer"] = {[0] = myNumber, [1] = 1};
	mapping["Heinz Fischer"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Heinz Fischer", [1] = 25, [2] = 0, [3] = talkHeinz, [4] = tickHeinz};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkHeinz(arg, target)

	local mynum = mapping["heinz"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("the developer had something really cool planned for "..myStuff[0]..", but ran out of time")
		return 0
	end
end

function tickHeinz()
--[[ Used if this person should do something on their own ]]--
	
end

