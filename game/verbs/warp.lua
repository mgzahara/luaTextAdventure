


function initWarp()

	local number = 25;
	local words = {"warp", "teleport", "summon"};
	for i, word in ipairs(words) do
		if (verbs[word] ~= nil) then
			print (word .. " was multiply defined as verb type " .. verbs[word] ..
			" and " .. number);
			io.exit();
		end
		verbs[word] = number
	end;

	handlers[number] = handleWarp;

end


function handleWarp(a, b)
-- a == object
-- b == person
	local object = mapping[a];--table where object[0] == unique number in items{}
	local person = mapping[b];--table where person[0] == unique number in people{}
	local whom;
	local what;

	if ((object == nil)and(person == nil)) then	
		print ("You need to do that to someone/something!");
		return 0;
	end;
		
	if (person ~= nil) then whom = people[person[0]]; end;
	if (object ~= nil) then what = items[object[0]]; end;

	if(what == nil and whom ~= nil) then -- only person was sent
		whom[3](25)
		return 0
	elseif(what ~= nil and whom == nil) then -- only item was sent
		what[4](25)
		return 0
	else -- both were sent
		whom[3](25, what)
		return 0
	end
end
