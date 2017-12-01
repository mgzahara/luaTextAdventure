
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

function wellingtonTicketinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["Wellington ticket"] = {[0] = myNumber, [1] = 0};
	
	items[myNumber] = {[0] = "ticket to Wellington", [1] = 56, [2] = 0, [3] = "a", [4] = useWellingtonTicket};


end

--[[ 
arg = verb number used on this item
]]--
function useWellingtonTicket(arg, target)
-- arg == verb used on this item
--target == ???
	local mynum = mapping["Wellington ticket"][0];
	local myStuff = items[mynum];


	if (arg == 0) then
		print ("  "..myStuff[3].." "..myStuff[0]);
		return 0
	end

	if (arg == 11) then -- buy
		if(myStuff[1] == 0) then -- in my inverntory
			print("you already have "..myStuff[3].." "..myStuff[0])
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("that isnt for sale, just take it")
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 12) then -- take
		if(myStuff[1] == 0) then -- in my inverntory
			print("you already have "..myStuff[3].." "..myStuff[0])
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("picked up "..myStuff[3].." "..myStuff[0])
			myStuff[1] = 0
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 13) then -- drop
		if(myStuff[1] == 0) then -- in my inverntory
			print("dropped "..myStuff[3].." "..myStuff[0])
			myStuff[1] = location
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 14) then -- plant
		if(myStuff[1] == 0) then -- in my inverntory
			print("that makes no sense")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 15) then -- show
		if(myStuff[1] == 0) then -- in my inverntory
			print("you should show that to someone")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 16) then -- sell
		if(myStuff[1] == 0) then -- in my inverntory
			print("you should sell that to someone")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end	
	elseif (arg == 17) then -- harvest
		if(myStuff[1] == 0) then -- in my inverntory
			print("you already have "..myStuff[3].." "..myStuff[0])
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("that makes no sense")
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 18) then -- inventory
		if(myStuff[1] == 0) then -- in my inverntory
			print("that makes no sense")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("that makes no sense")
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end	
	elseif (arg == 19) then -- throw
		if(myStuff[1] == 0) then -- in my inverntory
			myStuff[1] = location
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end	
	elseif (arg == 20) then -- use
		if(myStuff[1] == 0) then -- in my inverntory
			handlers[23]("Wellington Airport") -- call fly function
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 21) then -- rub
		if(myStuff[1] == 0) then -- in my inverntory
			print("you rubbed "..myStuff[3].." "..myStuff[0])
			print("weirdo")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("that doesnt belong to you")
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 22) then -- climb
		if(myStuff[1] == 0) then -- in my inverntory
			print("you climbed "..myStuff[3].." "..myStuff[0])
			print("weirdo")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("that doesnt belong to you")
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 23) then -- fly
		if(myStuff[1] == 0) then -- in my inverntory
			print("that makes no sense")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("that makes no sense")
			return 0
		else -- not anywhere near
			print("that makes no sense")
			return 0
		end	
	elseif (arg == 24) then -- time
		if(myStuff[1] == 0) then -- in my inverntory
			print("that makes no sense")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end	
	elseif (arg == 33) then -- give
		if(myStuff[1] == 0) then -- in my inverntory
			print("you should give that to someone")
			return 0
		elseif(myStuff[1] ==  location) then -- in this room
			print("you are not holding "..myStuff[3].." "..myStuff[0])
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end	
	else
		print("unknown command")
		return 0
	end

end



