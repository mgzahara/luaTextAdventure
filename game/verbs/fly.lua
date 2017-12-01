

function initFly()

  local number = 23 --unique for each verb
  local words = {"fly", "Fly", "travel", "Travel"};--aliases for this verb
  for i, word in ipairs(words) do --go through each of the above aliases
    if (verbs[word] ~= nil) then --if it has been taken, give error and close
      print (word .. " was multiply defined as verb type " .. verbs[word] ..
        " and " .. number);
      io.exit();
    end
    verbs[word] = number --alias is not taken, use it and assign this verb's unique number to it
  end;

  handlers[number] = handleFly;--add this verb's functions to the handlers{}

end





function handleFly(a)
-- a == name of place to fly to

	if (a == nil) then	-- nothing passed
		print ("You need to do that to someone/something!");
		return 0;
	end
	
	if(location == 7 or location == 28 or location == 35 or location == 40 or location == 47) then-- standing at an airport
		if(string.match(a, '^[sS]ault [aA]irport$') ) then
				if(location ~= 7) then
					print("you do not have a ticket for that")
					return 0
				else
					print("you are already at Sault Airport")
					return 0
				end
			
		elseif(string.match(a, '^[bB]elgrade [aA]irport$') ) then
			if(items[mapping["Belgrade ticket"][0]][1] == 0) then -- Belgrade ticket in inventory
				if(location == 28)then
					print("you are already at Belgrade Airport")
					return 0
				else
					location = 28 -- set location to Belgrade Airport
					items[mapping["Belgrade ticket"][0]][1] = -1 -- remove ticket from inventory
					print("flying to Belgrade Airport")
					days = days + 1 -- change time
					return 0
				end
			else -- Belgrade ticket NOT in inventory
				print("you do not have a ticket for that")
				return 0
			end
			
		elseif(string.match(a, '^[cC]airo [aA]irport$') ) then
			if(items[mapping["Cairo ticket"][0]][1] == 0) then -- cairo ticket in inventory
				if(location == 35) then
					print("you are already at Cairo Airport")
					return 0
				else
					location = 35 -- set location to Cairo Airport
					items[mapping["Cairo ticket"][0]][1] = -1 -- remove ticket from inventory
					print("flying to Cairo Airport")
					days = days + 1 -- change time
					return 0
				end
			else -- cairo ticket NOT in inventory
				print("you do not have a ticket for that")
				return 0
			end
			
		elseif(string.match(a, '^[bB]eijing [aA]irport$') ) then
			if(items[mapping["Beijing ticket"][0]][1] == 0) then -- beijing ticket in inventory
				if(location == 40) then
					print("you are already at Beijing Airport")
					return 0
				else
					location = 40 -- set location to Cairo Airport
					items[mapping["Beijing ticket"][0]][1] = -1 -- remove ticket from inventory
					print("flying to Beijing Airport")
					days = days + 1 -- change time
					return 0
				end
			else -- beijing ticket NOT in inventory
				print("you do not have a ticket for that")
				return 0
			end
			
		elseif(string.match(a, '^[wW]ellington [aA]irport$') ) then
			if(items[mapping["Wellington ticket"][0]][1] == 0) then -- wellington ticket in inventory
				if(location == 47) then
					print("you are already at Cairo Airport")
					return 0
				else
					location = 47 -- set location to Cairo Airport
					items[mapping["Wellington ticket"][0]][1] = -1 -- remove ticket from inventory
					print("flying to Wellington Airport")
					days = days + 1 -- change time
					return 0
				end
			else -- wellington ticket NOT in inventory
				print("you do not have a ticket for that")
				return 0
			end
		else
			print("I dont know where "..a.." is")
			return 0
		end
	else
		print("you cannot do that here")
		return 0
	end
end