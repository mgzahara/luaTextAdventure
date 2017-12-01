
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

function THINGinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["alias"] = {[0] = myNumber, [1] = 0};
	
	items[myNumber] = {[0] = "FULL NAME", [1] = -1, [2] = 0, [3] = "a", [4] = use???};


end

--[[ 
arg = verb number used on this item
]]--
function use???(arg, target)
-- arg == verb used on this item
--target == ???
	local mynum = mapping["NAME"][0]; --  gets unique number
	local myStuff = items[mynum]; -- give unique number to items{} to get this item's specifics


	if (arg == 0) then
		print ("  "..myStuff[3].." "..myStuff[0]);
	end

	-- outline of handling all verbs

	if (arg == 0) then
		print ("  "..myStuff[3].." "..myStuff[0]);
	end
	if (arg == 11) then -- buy
	
	end
	if (arg == 12) then -- take
	
	end
	if (arg == 13) then -- drop
	
	end
	if (arg == 14) then -- plant
	
	end
	if (arg == 15) then -- show
	
	end
	if (arg == 16) then -- sell
	
	end
	if (arg == 17) then -- harvest
	
	end
	if (arg == 18) then -- inventory
	
	end
	if (arg == 19) then -- throw???
	
	end
	if (arg == 20) then -- use
	
	end
	if (arg == 21) then -- rub
	
	end
	if (arg == 22) then -- climb
	
	end
	if (arg == 23) then -- fly
	
	end
	if (arg == 24) then -- time
	
	end
	if (arg == 33) then -- give
	
	end

end



