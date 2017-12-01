


function initBuy()
--called once to set up all aspects of this verb
	local number = 11;
	local words = {"buy", "purchase"};
	for i, word in ipairs(words) do
		if (verbs[word] ~= nil) then
			print (word .. " was multiply defined as verb type " .. verbs[word] ..
			" and " .. number);
			io.exit();
		end
		verbs[word] = number
	end;

	handlers[number] = handleBuy;

end

function handleBuy(a, b)
-- a == object
-- b == person
	local object = mapping[a]; -- gets specific object number
	local person = mapping[b]; -- gets specific person number
	local whom; -- specific person table
	local what; -- specific object table


	if ((object == nil)and(person == nil)) then
		print ("You need to do that to someone/something!");
		return 0;
	end;

	if (person ~= nil) then whom = people[person[0]]; end; -- assign whom to the specific person table
	if (object ~= nil) then what = items[object[0]]; end; -- assign what to the specific item table

	if(what == nil and whom ~= nil) then -- only person was sent
		whom[3](11)
		return 0
	elseif(what ~= nil and whom == nil) then -- only item was sent
		what[4](11)
		return 0
	else -- both were sent
		whom[3](11, what)
		return 0
	end

end
