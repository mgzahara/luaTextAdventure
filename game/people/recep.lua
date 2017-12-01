--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function recepinit() -- turkey president
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["recep"] = {[0] = myNumber, [1] = 1};
	mapping["recep erdogan"] = {[0] = myNumber, [1] = 1};
	mapping["Recep"] = {[0] = myNumber, [1] = 1};
	mapping["Recep Erdogan"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Recep Erdogan", [1] = 31, [2] = 0, [3] = talkRecep, [4] = tickRecep};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkRecep(arg, target)

	local mynum = mapping["Recep"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("the developer had something really cool planned for "..myStuff[0]..", but ran out of time")
		return 0
	end
end

function tickRecep()
--[[ Used if this person should do something on their own ]]--
	
end

