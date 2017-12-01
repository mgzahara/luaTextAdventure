
--[[
mapping 
0 = this number
1 = always 0 -> this is an item

items
0 -> Full name
1 -> location
2 -> status
3 -> article (a/an/the)
4 -> Use function

Be sure to call THINGinit in main.lua
]]--

function nothinginit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["nothing"] = {[0] = myNumber, [1] = 0};
	
	items[myNumber] = {[0] = "nothing", [1] = 49, [2] = 0, [3] = "absolutely", [4] = useNothing};


end

--[[ 
arg = verb number used on this item
]]--
function useNothing(arg, target)
-- arg == verb used on this item
--target == ???
	local mynum = mapping["nothing"][0];
	local myStuff = items[mynum];


	if (arg == 0) then
		print ("  "..myStuff[3].." "..myStuff[0]);
		return 0
	end


	if (arg == 11) then -- buy
		print("that makes no sense")
		return 0
	elseif (arg == 12) then -- take
		print("that makes no sense")
		return 0
	elseif (arg == 13) then -- drop
		print("that makes no sense")
		return 0
	elseif (arg == 14) then -- plant
		print("that makes no sense")
		return 0
	elseif (arg == 15) then -- show
		print("that makes no sense")
		return 0
	elseif (arg == 16) then -- sell
		print("that makes no sense")
		return 0
	elseif (arg == 17) then -- harvest
		print("that makes no sense")
		return 0
	elseif (arg == 18) then -- inventory
		print("that makes no sense")
		return 0
	elseif (arg == 19) then -- throw
		print("that makes no sense")
		return 0
	elseif (arg == 20) then -- use
		print("that makes no sense")
		return 0
	elseif (arg == 21) then -- rub
		print("that makes no sense")
		return 0
	elseif (arg == 22) then -- climb
		print("that makes no sense")
		return 0
	elseif (arg == 23) then -- fly
		print("that makes no sense")
		return 0
	elseif (arg == 24) then -- time
		print("that makes no sense")
		return 0
	elseif (arg == 33) then -- give
		print("that makes no sense")
		return 0	
	else
		print("unknown command")
		return 0
	end

end



