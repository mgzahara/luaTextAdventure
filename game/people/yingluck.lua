--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function yingluckinit() -- thailand president
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["yingluck"] = {[0] = myNumber, [1] = 1};
	mapping["yingluck shinawatra"] = {[0] = myNumber, [1] = 1};
	mapping["Yingluck"] = {[0] = myNumber, [1] = 1};
	mapping["Yingluck Shinawatra"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Yingluck Shinawatra", [1] = 42, [2] = 0, [3] = talkYingluck, [4] = tickYingluck};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkYingluck(arg, target)

	local mynum = mapping["yingluck"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("the developer had something really cool planned for "..myStuff[0]..", but ran out of time")
		return 0
	end
end

function tickYingluck()
--[[ Used if this person should do something on their own ]]--
	
end

