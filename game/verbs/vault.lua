


function initVault()

	local number = 28
	local words = {"vault", "v"};
	for i, word in ipairs(words) do
		if (verbs[word] ~= nil) then
			print (word .. " was multiply defined as verb type " .. verbs[word] ..
			" and " .. number);
			io.exit();
		end
		verbs[word] = number
	end;

	handlers[number] = handleVault

end





function handleVault(a, b)
	print("you have "..tacosInCloset.." tacos stored in your \"vault\"")
	return 0
end
