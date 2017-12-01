--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function francoisinit() -- french president
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["francois"] = {[0] = myNumber, [1] = 1};
	mapping["francois hollande"] = {[0] = myNumber, [1] = 1};
	mapping["Francois"] = {[0] = myNumber, [1] = 1};
	mapping["Francois Hollande"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Francois Hollande", [1] = 23, [2] = 0, [3] = talkFrancois, [4] = tickFrancois};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkFrancois(arg, target)

	local mynum = mapping["francois"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("the developer had something really cool planned for "..myStuff[0]..", but ran out of time")
		return 0
	end
end

function tickFrancois()
--[[ Used if this person should do something on their own ]]--
	
end

