

function initAttack()

  local number = ??--unique for each verb
  local words = {"??", "??"};--aliases for this verb
  for i, word in ipairs(words) do --go through each of the above aliases
    if (verbs[word] ~= nil) then --if it has been taken, give error and close
      print (word .. " was multiply defined as verb type " .. verbs[word] ..
        " and " .. number);
      io.exit();
    end
    verbs[word] = number --alias is not taken, use it and assign this verb's unique number to it
  end;

  handlers[number] = handle####;--add this verb's functions to the handlers{}

end




-- **if a person is involved, let them handle it
-- **if a person is not involved, let the object handle it
function handle####(a, b)
-- a == object
-- b == person
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



  	if (what == nil) then
  		print ("You did not specify an object.");
  		return 0;
  	end;

  	if (whom[1] ~= location) then
  		print (whom[0] .. " isn't here.");
  		return 0
  	end

  --very specific case example

  	if ((person[0] == mapping["dog"][0]) and
  		 (object[0] == mapping["taco"][0])) then
  			whom[3](33, object[0]);
  			return 0;
  	end;


end
