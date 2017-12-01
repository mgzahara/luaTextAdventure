--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status
	3 -> Interact function
	4 -> Tick function

]]--
function abdelinit() -- egypt president
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;

	mapping["abdel"] = {[0] = myNumber, [1] = 1};
	mapping["abdel el-sisi"] = {[0] = myNumber, [1] = 1};
	mapping["Abdel"] = {[0] = myNumber, [1] = 1};
	mapping["Abdel el-Sisi"] = {[0] = myNumber, [1] = 1};

	people[myNumber] = {[0] = "Abdel el-Sisi", [1] = 33, [2] = 0, [3] = talkAbdel, [4] = tickAbdel};


end

--[[
arg == verb num
target == specific item table
]]--
function talkAbdel(arg, target)

	local mynum = mapping["abdel"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	end

	if(target)then -- target was passed
		if (arg == 15) then -- show
			if(target[0] == "UN mandate") then -- showing the UN mandate
				if(target[1] == 0) then -- UN mandate in inverntory
					events["egyptMandate"] = true
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
					if(events["egyptMandate"])then -- shown mandate to Xi
						events["egyptTaco"] = true
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

function tickAbdel()
--[[ Used if this person should do something on their own ]]--

end

