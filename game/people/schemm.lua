--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function schemminit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["schemm"] = {[0] = myNumber, [1] = 1};
	mapping["Schemm"] = {[0] = myNumber, [1] = 1};
	mapping["dr. schemm"] = {[0] = myNumber, [1] = 1};
	mapping["Dr. schemm"] = {[0] = myNumber, [1] = 1};
	mapping["dr. Schemm"] = {[0] = myNumber, [1] = 1};
	mapping["Dr. Schemm"] = {[0] = myNumber, [1] = 1};
	mapping["evil"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Dr. Scehmm", [1] = 2, [2] = 0, [3] = talkSchemm, [4] = tickSchemm};

end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkSchemm(arg, target)

	local mynum = mapping["schemm"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print(myStuff[0].." is busy plotting against his students")
		return 0
	end
end

function tickSchemm()
--[[ Used if this person should do something on their own ]]--
	
end

