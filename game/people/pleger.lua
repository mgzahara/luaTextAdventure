--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function plegerinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["Pleger"] = {[0] = myNumber, [1] = 1};
	mapping["pleger"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Pleger", [1] = 4, [2] = 0, [3] = talkPleger, [4] = tickPleger};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkPleger(arg, target)


	local mynum = mapping["Pleger"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	end
	if(target)then -- target was passed
		if (arg == 33) then -- give
			if(target[0] == "tasty taco") then
				if(target[1] == 0) then
					print("Pleger thinks this \"Taco Bell\" is a great idea")
					print("he want to have you show his good friend, he lives west/north of here")
					events["fedPleger"] = true
					return 0
				else
					print("you have no tacos to give Pleger")
					return 0
				end
			else
				print("Pleger does not want "..target[3].." "..target[0])
				return 0
			end
		else
			print(myStuff[0].." doesnt understand you")
			return 0
		end
	else -- target was not passed
		if (arg == 11 or arg == 16) then -- buy/sell
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
		elseif (arg == 21 or arg == 22) then -- rub/climb
			print(myStuff[0].." doesnt appreciate that")
			return 0
		else
			print("that makes no sense")
			return 0
		end
	end
end

function tickPleger()
--[[ Used if this person should do something on their own ]]--
	
end

