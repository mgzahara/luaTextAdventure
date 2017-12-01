
--[[
mapping 
0 = this number
1 = always 0 -> this is an item

items
0 -> Full name
1 -> location
2 -> status
3 -> article (a or an or the)
4 -> Use function

Be sure to call THINGinit in main.lua
]]--

function tacoinit()--called once to set up game, establishes all aspects of the item
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["Taco"] = {[0] = myNumber, [1] = 0};
	mapping["taco"] = {[0] = myNumber, [1] = 0};
	mapping["tasty taco"] = {[0] = myNumber, [1] = 0};
	
	items[myNumber] = {[0] = "tasty taco", [1] = 10, [2] = 0, [3] = "a", [4] = useTaco};


end

--[[ 
arg = verb number used on this item
]]--
function useTaco(arg, target)
	local mynum = mapping["taco"][0];
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
			if (funds >= 1) then
				if (myStuff[1] == 10) then -- if taco is in taco bell
					print ("You purchase "..myStuff[3].." "..myStuff[0]..".");
					funds = funds - 1; -- use a dollar
					myStuff[1] = 0; -- set taco location to inventory
				else
					print("Kody says 'Eat the one you already have!'");
				end;
			else -- cannot afford taco
				print ("Kody says 'Tacos on sale! Today only, $1'.");
			end
			return 0
		else -- not anywhere near
			print("there is no "..myStuff[0].." nearby")
			return 0
		end
	elseif (arg == 12) then -- take
		if(myStuff[1] == 0) then -- in my inverntory
			print("you already have "..myStuff[3].." "..myStuff[0])
			return 0
		elseif(location == 10) then
			print ("Kody glares at you for trying to steal "..myStuff[3].." "..myStuff[0].. ".")
			print ("Don't make him angry, or he will smite you.")			
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
			if(location == 12) then -- on the farm
				myStuff[1] = -1
				events["tacoPlanted"] = true -- set tacoPlated event to true
				return 0
			elseif(location == 28) then
				events["serbiaAPTaco"] = true
				print("Serbia will have a bountiful taco harvest")
				return 0
			elseif(location == 35) then
				events["egyptAPTaco"] = true
				print("Egypt will have a bountiful taco harvest")
				return 0
			elseif(location == 40) then
				events["chinaAPTaco"] = true
				print("China will have a bountiful taco harvest")
				return 0
			elseif(location == 47) then
				events["NZAPTaco"] = true
				print("New Zealand will have a bountiful taco harvest")
				return 0
			else -- not on the farm
				print("this is not the place for that")
				return 0
			end
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
			print("you threw "..myStuff[3].." "..myStuff[0])
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
			print("you have nothing to use "..myStuff[3].." "..myStuff[0].." on")
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
			print("that makes no sense")
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
	elseif(arg == 25)then -- warp
		if(myStuff[1] ~= 0) then -- not one in inventory
			if(tacosInCloset > 0)then -- there is at least one in storage
				myStuff[1] = 0
				tacosInCloset = tacosInCloset - 1
				print("taco acquired")
				return 0
			else
				print("stock is empty!")
				return 0
			end	
		else -- there is one in inventory
			print("you already have one!")
			return 0
		end
	else
		print("unknown command")
		return 0
	end
	
	
end



