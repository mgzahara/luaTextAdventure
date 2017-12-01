--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function prokopisinit() -- greece president
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["prokopis"] = {[0] = myNumber, [1] = 1};
	mapping["prokopis pavlopoulos"] = {[0] = myNumber, [1] = 1};
	mapping["Prokopis"] = {[0] = myNumber, [1] = 1};
	mapping["Prokopis Pavlopoulos"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Prokopis Pavlopoulos", [1] = 30, [2] = 0, [3] = talkProkopis, [4] = tickProkopis};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkProkopis(arg, target)

	local mynum = mapping["prokopis"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("the developer had something really cool planned for "..myStuff[0]..", but ran out of time")
		return 0
	end
end

function tickProkopis()
--[[ Used if this person should do something on their own ]]--
	
end

