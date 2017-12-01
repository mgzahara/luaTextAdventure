


function initDrop()

	local number = 13;
	local words = {"drop", "put", "throw", "toss"};
	for i, word in ipairs(words) do
		if (verbs[word] ~= nil) then
			print (word .. " was multiply defined as verb type " .. verbs[word] ..
			" and " .. number);
			io.exit();
		end
		verbs[word] = number
	end;

	handlers[number] = handleDrop;

end


function handleDrop(a, b)
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
	
	if(what[0] == "tasty taco" and location == 13) then -- dropping taco in storage closet
		print("taco added to the vault")
		tacosInCloset = tacosInCloset + 1
		what[1] = 10 --send taco item back to tBell
		return 0
	end
	

	if(what == nil and whom ~= nil) then -- only person was sent
		whom[3](13)
		return 0
	elseif(what ~= nil and whom == nil) then -- only item was sent
		what[4](13)
		return 0
	else -- both were sent
		whom[3](13, what)
		return 0
	end
end
