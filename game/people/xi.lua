--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status
	3 -> Interact function
	4 -> Tick function

]]--
function xiinit() -- cina president
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;

	mapping["xi"] = {[0] = myNumber, [1] = 1};
	mapping["xi jinping"] = {[0] = myNumber, [1] = 1};
	mapping["Xi"] = {[0] = myNumber, [1] = 1};
	mapping["Xi Jinping"] = {[0] = myNumber, [1] = 1};

	people[myNumber] = {[0] = "Xi Jinping", [1] = 38, [2] = 0, [3] = talkXi, [4] = tickXi};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkXi(arg, target)

	local mynum = mapping["Xi"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	end
	
	if(target)then -- target was passed
		if (arg == 15) then -- show
			if(target[0] == "UN mandate") then -- showing the UN mandate
				if(target[1] == 0) then -- UN mandate in inverntory
					events["chinaMandate"] = true
					print(myStuff[0].." agrees to honor the UN mandate")
					print(myStuff[0].." requests a taco to begin the Taco Bell empire")
					return 0
				else -- UN mandate NOT in inverntory
					print(myStuff[0].." sees no UN mandate")
					return 0
				end
			else -- showing something that is not the UN mandate
				print(myStuff[0].." does not care about "..target[3].." "..target[0])
				return 0
			end
		elseif(arg == 33)then -- give
			if(target[0] == "tasty taco")then -- give taco
				if(target[1] == 0)then
					if(events["chinaMandate"])then -- shown mandate to Xi
						events["chinaTaco"] = true
						print(myStuff[0].." now has all he needs to comply with the UN mandate")
						target[1] = 10 -- send taco back to tBell
						return 0
					else -- not yet shown mandate to Xi
						print(myStuff[0].." does not want your filthy taco")
						return 0
					end
				else
					print("you have no taco to give "..myStuff[0])
					return 0
				end			
			else
				print(myStuff[0].." does not want "..target[3].." "..target[0])
				return 0
			end		
		else -- verb other than show
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

function tickXi()
--[[ Used if this person should do something on their own ]]--

end

