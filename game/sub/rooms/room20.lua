
function room20()
	location = 20
	print ("-----------------------------------------------------------")
	print ("You are in Geneva")
	list()
	show(location)
	local move = parse()
	if (move == 0) then return location; end

	-- North
	if (move == 1) then
		print("You can't move that way!")
		return location;
	end
	-- East
	if (move == 2) then
		print("You can't move that way!")
		return location;
	end
	-- South
	if (move == 3) then
 days = days + 1
 if(events["tacoPlanted"]) then
 dayTacoPlanted = dayTacoPlanted + 1
 end 
 if(events["enteredGiantHouse"])then
 dayEnteredGiantHouse = dayEnteredGiantHouse + 1
 end 
return 19; end
	-- West
	if (move == 4) then
 days = days + 1
 if(events["tacoPlanted"]) then
 dayTacoPlanted = dayTacoPlanted + 1
 end 
 if(events["enteredGiantHouse"])then
 dayEnteredGiantHouse = dayEnteredGiantHouse + 1
 end 
return 21; end
	print ("I don't understand your actions!")
	return location



end
