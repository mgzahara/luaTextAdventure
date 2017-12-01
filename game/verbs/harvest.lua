

function initHarvest()

  local number = 17 --unique for each verb
  local words = {"harvest", "reap"};--aliases for this verb
  for i, word in ipairs(words) do --go through each of the above aliases
    if (verbs[word] ~= nil) then --if it has been taken, give error and close
      print (word .. " was multiply defined as verb type " .. verbs[word] ..
        " and " .. number);
      io.exit();
    end
    verbs[word] = number --alias is not taken, use it and assign this verb's unique number to it
  end;

  handlers[number] = handleHarvest;--add this verb's functions to the handlers{}

end





function handleHarvest(a, b)
	local object = mapping[a];--table where object[0] == unique number in items{}
	local person = mapping[b];--table where person[0] == unique number in people{}
	local whom;
	local what;
	
	if ((object == nil)and(person == nil)) then	--user typed only the verb
		print ("You need to do that to someone/something!");
		return 0;
	end;

    if (person ~= nil) then whom = people[person[0]]; end;--a person was passed, so get their specific table of stuff
    if (object ~= nil) then what = items[object[0]]; end;--an item was passed, so get its specific table of stuff

	if(what == nil and whom ~= nil) then -- only person was sent
		whom[3](17)
		return 0
	elseif(what ~= nil and whom == nil) then -- only item was sent
		what[4](17)
		return 0
	else -- both were sent
		whom[3](17, what)
		return 0
	end
	
end
