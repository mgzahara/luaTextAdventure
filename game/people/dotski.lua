--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function dotskiinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["dotski"] = {[0] = myNumber, [1] = 1};
	mapping["Dotski"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Dotski", [1] = 5, [2] = 0, [3] = talkDotski, [4] = tickDotski};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkDotski(arg, target)

	local mynum = mapping["dotski"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("please don not bother Dotski, she is studying")
		return 0
	end
end

function tickDotski()
--[[ Used if this person should do something on their own ]]--
	
end

