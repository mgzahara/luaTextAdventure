--[[
mappings are always 0 = myNumber, and 1=1 (person)

people
	0 -> Full name
	1 -> Location
	2 -> Status 
	3 -> Interact function
	4 -> Tick function

]]--
function doginit()
	local myNumber = nextNumber;
	nextNumber = nextNumber + 1;
	
	mapping["dog"] = {[0] = myNumber, [1] = 1};
	mapping["Dog"] = {[0] = myNumber, [1] = 1};
	mapping["puppy"] = {[0] = myNumber, [1] = 1};
	mapping["Roxie"] = {[0] = myNumber, [1] = 1};
	mapping["roxie"] = {[0] = myNumber, [1] = 1};
	mapping["fatty"] = {[0] = myNumber, [1] = 1};
	mapping["fattie"] = {[0] = myNumber, [1] = 1};
	
	people[myNumber] = {[0] = "fat puppy named Roxie", [1] = 17, [2] = 0, [3] = talkDog, [4] = tickDog};


end

--[[ 
arg == verb num
target == specific item table 
]]--
function talkDog(arg, target)
	local mynum = mapping["dog"][0];
	local myStuff = people[mynum];


	if (arg == 0) then
		print (myStuff[0] .. " is standing here.");
		return 0
	end

	if (arg == 21) then
		print ("Bark! Bark! Bark!")
		return 0
	end

	
	
	
	
	if(target)then -- target was passed
		if (arg == 33) then -- give
			if(target[0] == "tasty taco") then
				if(target[1] == 0)then
					print ("Elizabeth does not want you to feed her dog tacos")
					return 0
				else
					print ("You are not carrying a taco, the puppy becomes angry!")
					return 0
				end
			else
				print(myStuff[0].." does not want "..target[3].." "..target[0])
				return 0
			end
		else
			print(myStuff[0].." is sleeping right now")
			return 0
		end
	else -- target was not passed
		print(myStuff[0].." is sleeping right now")
		return 0	
	end

end

--[[ Used if this person should do something on their own ]]--
function tickDog()

	local hmm = math.random(6);

	if (hmm == 2) then
		print ("A dog howls in the distance.");
	end
	
end

