--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function smithinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["Smith"] = {[0] = myNumber, [1] = 1};
	mapping["smith"] = {[0] = myNumber, [1] = 1};
	mapping["dr. Smith"] = {[0] = myNumber, [1] = 1};
	mapping["Dr. Smith"] = {[0] = myNumber, [1] = 1};
	mapping["Dr. smith"] = {[0] = myNumber, [1] = 1};
	mapping["dr. Smith"] = {[0] = myNumber, [1] = 1};
	mapping["csmith16"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Dr. Smith", [1] = 3, [2] = 0, [3] = talkSmith, [4] = tickSmith};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkSmith(arg, target)

	local mynum = mapping["Smith"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("Dr. Smith is far too busy with his robots")
		return 0
	end
end

function tickSmith()
--[[ Used if this person should do something on their own ]]--
	
end

