--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function ratinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["rat"] = {[0] = myNumber, [1] = 1};
	mapping["trump?"] = {[0] = myNumber, [1] = 1};
	mapping["Trump?"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "what appears to be Trump", [1] = 15, [2] = 0, [3] = talkRat, [4] = tickRat};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkRat(arg, target)

	local mynum = mapping["rat"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	end
	if(target)then -- target was passed
		if(arg == 33) then -- give
			if(target[0] == "tasty taco") then -- giving taco
				if(target[1] == 0)then -- has taco in inventory
					print(myStuff[0].." ran away with the tasty taco")
					print("turns out that was a rat ina wig and it just stole your taco!")
					print("*the real Trump walks in*")
					people[mapping["trump"][0]][1] = location -- assign trump to this room
					return 0
				else -- does not have taco in inventory
					print(myStuff[0].." squeaks at you in anger")
					return 0
				end			
			else -- giving not taco
				print(myStuff[0].." squeaks at you in disappointment")
				return 0
			end
		else
			print(myStuff[0].." squeaks at you in confusion")
			return 0
		end
	else -- target was not passed
		if (arg == 11 or arg == 16) then -- buy
			print("people cannot be bought/sold")
			return 0
		elseif (arg == 12) then -- take
			print(myStuff[0].." does not want to go with you")
			return 0
		elseif (arg == 15) then -- show
			print("you should have something to show "..myStuff[0])
			return 0
		elseif (arg == 20) then -- use
			print("people cannot be used")
			return 0
		elseif (arg == 21 or arg == 22) then -- rub
			print(myStuff[0].." doesnt appreciate that")
			return 0
		else
			print("that makes no sense")
			return 0
		end
	end
end

function tickRat()
--[[ Used if this person should do something on their own ]]--
	
end

