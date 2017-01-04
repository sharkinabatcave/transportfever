function table.copy(obj)
	if type(obj) ~= 'table' then
		return obj
	end

	local res = { }
	for k, v in pairs(obj) do
		res[table.copy(k)] = table.copy(v)
	end
	return res
end
