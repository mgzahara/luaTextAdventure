--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function Seaninit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["Alias"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "FullName", [1] = XX, [2] = 0, [3] = talkWho, [4] = tickWho};


end

function talkWho(arg, target)
--arg == verb code
--target == full name of item

	local mynum = mapping["Who"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
	end
--check specific verbs and items here
end

function tickWho()
--[[ Used if this person should do something on their own ]]--
	
end

