


function initGive()

  local number = 33;
  local words = {"give", "hand"};
  for i, word in ipairs(words) do
    if (verbs[word] ~= nil) then
      print (word .. " was multiply defined as verb type " .. verbs[word] ..
        " and " .. number);
      io.exit();
    end
    verbs[word] = number
  end;

  handlers[number] = handleGive;

end



function handleGive(a, b)
-- this verb allows only one arguement
	local object = mapping[a];
	local person = mapping[b];
	local whom;
	local what;

	if ((object == nil)and(person == nil)) then	
		print ("You need to do that to someone/something!");
		return 0;
	end;
		
	if (person ~= nil) then whom = people[person[0]]; end;
	if (object ~= nil) then what = items[object[0]]; end;

	if(what == nil and whom ~= nil) then -- only person was sent
		whom[3](33)
		return 0
	elseif(what ~= nil and whom == nil) then -- only item was sent
		what[4](33)
		return 0
	else -- both were sent
		whom[3](33, what)
		return 0
	end
	
end
