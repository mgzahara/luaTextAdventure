--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function grandmainit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["Grandma"] = {[0] = myNumber, [1] = 1};
	mapping["grandma"] = {[0] = myNumber, [1] = 1};
	mapping["Lulu"] = {[0] = myNumber, [1] = 1};
	mapping["Ahmed's grandma"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "Ahmed's Grandma Lulu", [1] = 8, [2] = 0, [3] = talkGrandma, [4] = tickGrandma};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkGrandma(arg, target)
	local mynum = mapping["Grandma"][0];
	local myStuff = people[mynum];


	if (arg == 0) then --used only for list()
		print (myStuff[0] .. " is standing here.");
		return 0
	end

	if ((arg == 33) and (target == mapping["taco"][0])) then
		if (items[target][1] == 0) then
			print ("She does not want to eat in the bank");
		else
			print ("Ahmed's grandma is angry with you and adds you to the TSA watch list");
		end
	end
	
	
	
	
	if(target)then -- target was passed
		
		if (arg == 16) then -- sell**************
			if(target[0] == "tasty taco") then
				if(target[1] == 0) then
					print (myStuff[0].." will gladly buy "..target[3].." "..target[0].." from you")
					funds = funds + (math.random(6))
					target[1] = 10 -- set taco location back to tBell
					return 0
				else
					print (myStuff[0].." is angry with you and adds you to the TSA watch list")
					return 0
				end
			else
				print(myStuff[0].." does not want to buy "..target[3].." "..target[0])
				return 0
			end	
		elseif (arg == 33) then -- give
			if(target[0] == "tasty taco") then
				if(target[1] == 0) then
					print ("she does not want to eat in the bank")
					return 0
				else
					print (myStuff[0].." is angry with you and adds you to the TSA watch list")
					return 0
				end
			else
				print(myStuff[0].." does not want "..target[3].." "..target[0])
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

--[[ Used if this person should do something on their own ]]--
function tickGrandma()
	
end

