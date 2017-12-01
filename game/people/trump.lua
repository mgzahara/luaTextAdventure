--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function trumpinit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["Trump"] = {[0] = myNumber, [1] = 1};
	mapping["trump"] = {[0] = myNumber, [1] = 1};
	mapping["Donald Trump"] = {[0] = myNumber, [1] = 1};
	mapping["donlad trump"] = {[0] = myNumber, [1] = 1};
	mapping["the donald"] = {[0] = myNumber, [1] = 1};
	mapping["the D"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "actual Donald Trump (not a rat)", [1] = -1, [2] = 0, [3] = talkTrump, [4] = tickTrump};

end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkTrump(arg, target)

	local mynum = mapping["trump"][0];
	local myStuff = people[mynum];--myStuff == this person's table of stuff

	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	end
	
	if(target)then -- target was passed
		if (arg == 15) then -- show
			if(target[0] == "tasty taco") then
				print("trump thinks the taco is sad looking")
				return 0
			elseif(target[0] == "stylish watch") then
				print("trump says he has many more watches that are twice as nice")
				return 0
			else
				print(myStuff[0].." does not have time to look at that")
				return 0
			end
		elseif (arg == 33) then -- give
			if(target[0] == "tasty taco") then
				print("trump realizes that this taco could be huge")
				print("he wants to take you to the UN to spread his great idea")
				events["fedTrump"] = true
				return 0
			elseif(target[0] == "stylish watch") then
				print("trump does not want your ugly watch, he has many watches that are twice as nice")
				return 0
			else
				print(myStuff[0].." does not want "..myStuff[3].." "..myStuff[0])
			end		
		else
			print(myStuff[0].." does not have time for that")
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

function tickTrump()
--[[ Used if this person should do something on their own ]]--
	
end

