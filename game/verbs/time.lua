


function initTime()

	local number = 24
	local words = {"time", "Time", "what time is it", "what time is it?", "t", "T"};
	for i, word in ipairs(words) do
		if (verbs[word] ~= nil) then
			print (word .. " was multiply defined as verb type " .. verbs[word] ..
			" and " .. number);
			io.exit();
		end
		verbs[word] = number
	end;

	handlers[number] = handleTime;

end





function handleTime(a, b)
	local object = mapping[a];
	local person = mapping[b];
	local whom;
	local what;
	
	if(items[mapping["watch"][0]][1] ~= 0) then
		print("you need a watch")
		return 0
	end

	if( (days % 2) == 0)then -- day time
		sun = ""
		sun = sun .. "     |\n"
		sun = sun .. "   \\ _ /\n"
		sun = sun .. " -= (_) =-\n"
		sun = sun .. "   /   \\ \n"
		sun = sun .. "     |\n"
		print(sun)
	else -- night time
		moon = ""
		moon = moon .. " .-.\n"
		moon = moon .. "( (    \n"
		moon = moon .. " '-'\n"
		print(moon)
	end
	return 0;
end
