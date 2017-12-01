
function list()
	print("You see:")
	for name, value in pairs(items) do --go through all items
             if (value[1] == location) then --if their location is set to the players location
                 value[4](0);--passing 0 as the only arguement results in "you see a tasty taco"
             end
        end
end



function show(location)
  for id, value in pairs(people) do --for each person
    if (value[1] == location) then --if they are in the room you are
      value[3](0);
    end
  end
end



function tick()
	if(location == 100)then
		done = true
		return 0
	end
	if(dayTacoPlanted > 3)then
		items[mapping["bean stalk"][0]][1] = 12
	end	
	if(dayEnteredGiantHouse > 10 and location == 51)then
		print("you encountered evil giant Schenn")
		print("he ate you because he did not remember he welcomed you into his home")
		done = true
		return 0	
	end
	if(events["serbiaTaco"] and events["egyptTaco"] and events["chinaTaco"] and events["NZTaco"])then
		print("\nyou successfully delivered Taco Bell unto the world!")
		print("you win... good job")
		done = true
		return 0
	end
	if(events["serbiaAPTaco"] and events["egyptAPTaco"] and events["chinaAPTaco"] and events["NZAPTaco"]) then
		print("\nyou successfully delivered Taco Bell unto the world!")
		print("...whether they wanted it or not")
		print("you win... good job")
		done = true
	end
	for id, value in pairs(people) do
		if (value[4] ~= nil) then
			value[4]();
		end
	end
end
