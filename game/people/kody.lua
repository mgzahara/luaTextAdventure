--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function kodyinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["kody"] = {[0] = myNumber, [1] = 1};
	mapping["Kody"] = {[0] = myNumber, [1] = 1};
	mapping["cody"] = {[0] = myNumber, [1] = 1};
	mapping["Cody"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Cody, Kody... whatever", [1] = 10, [2] = 0, [3] = talkKody, [4] = tickKody};


end


--[[ 
arg == verb num
target == specific item table 
]]--
function talkKody(arg, target)


	local mynum = mapping["kody"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	else
		print("[CK]ody wants you to buy tacos and/or leave")
		return 0
	end
end

function tickKody()
--[[ Used if this person should do something on their own ]]--
	
end

