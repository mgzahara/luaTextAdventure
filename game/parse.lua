
function parse()
	local str = io.read()

	lastVerb = nil;			-- Make sure that old verbs don't survive

	if (str == "north" or str == "go north" or str == "n")then
		return 1
	end
	if (str == "east" or str == "go east" or str == "e")then
		return 2
	end
	if (str == "south" or str == "go south" or str == "s")then
		return 3
	end
	if (str == "west" or str == "go west" or str == "w")then
		return 4
	end

	if(string.match(str, '^[fF]ly') ) then -- if fly is the verb to use
		verb, loc = string.match(str, '^([fF]ly) to (%w+ [aA]irport)')
		return handlers[23](loc) -- call fly on string given
	end

	--if not a movement command, run it through superparser
	local verb, object, person = superparser(str);

-- Convert the string of the verb to a verb number
	local num, special = parseVerb(verb);
	--num is verb unique number
	--special is the verb passed in

-- Add blocks here to handle certain types of verbs with certain
-- combinations of people and items

	if (handlers[num] ~= nil) then --let verb itself handle what to do
		--print("verb number: "..num)
		return handlers[num](object, person);
	end;


	if (num == 99) then endgame() end;

	if (num == 100) then 	-- Handle non-standard verbs in the room functions
		lastVerb = special;
		return 100;
		end;

	print "Command not understood"
return -1
end



function parseVerb(str)
  if (str == nil) then return 0, nil end;--ne verb and the same string handed in, since nil was passed
  if (verbs[str] ~= nil) then
    return verbs[str], str;
  end;
  return 100, str;
end;


-- Function endgame
-- Handle the end of the game
function endgame()
--put checks here to display custom win/loss message
	print "Game Over"
	os.exit()
end

