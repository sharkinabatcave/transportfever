function string.starts(input, test)
	return string.sub(input, 1, string.len(test)) == test
end

function string.ends(input, test)
	return test == '' or string.sub(input, -string.len(test)) == test
end

function string.interp(s, tab)
	return s:gsub("($%b{})", function (w) return tab[w:sub(3, -2)] or w end)
end
