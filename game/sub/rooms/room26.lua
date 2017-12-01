
function room26()
	location = 26
	print ("-----------------------------------------------------------")
	print ("You are in Serbia")
	list()
	show(location)
	local move = parse()
	if (move == 0) then return location; end

	-- North
	if (move == 1) then
 days = days + 1
 if(events["tacoPlanted"]) then
 dayTacoPlanted = dayTacoPlanted + 1
 end 
 if(events["enteredGiantHouse"])then
 dayEnteredGiantHouse = dayEnteredGiantHouse + 1
 end 
return 27; end
	-- East
	if (move == 2) then
 days = days + 1
 if(events["tacoPlanted"]) then
 dayTacoPlanted = dayTacoPlanted + 1
 end 
 if(events["enteredGiantHouse"])then
 dayEnteredGiantHouse = dayEnteredGiantHouse + 1
 end 
return 29; end
	-- South
	if (move == 3) then
		print("You can't move that way!")
		return location;
	end
	-- West
	if (move == 4) then
 days = days + 1
 if(events["tacoPlanted"]) then
 dayTacoPlanted = dayTacoPlanted + 1
 end 
 if(events["enteredGiantHouse"])then
 dayEnteredGiantHouse = dayEnteredGiantHouse + 1
 end 
return 24; end
	print ("I don't understand your actions!")
	return location



end
