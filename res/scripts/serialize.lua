local function serializeRec(o, prefix, writeFn)
	if type(o) == "nil" then
		writeFn("nil")
	elseif type(o) == "boolean" then
		writeFn(tostring(o))
	elseif type(o) == "number" then
		writeFn(o)
	elseif type(o) == "string" then
		writeFn(string.format("%q", o))
	elseif type(o) == "table" then
		writeFn("{\n")
		local prefix2 = prefix .. "\t"
		writeFn(prefix2)

		local indices = {}

		for k,v in ipairs(o) do
			indices[k] = 0
			serializeRec(v, prefix2, writeFn)		
			writeFn(", ")
		end

		local keys = {}
		for k in pairs(o) do
			if indices[k] == nil then	    				
				table.insert(keys, k)
			end
		end
		table.sort(keys)

		for i,k in ipairs(keys) do
			v = o[k]
			if type(k) == "string" and string.find(k, "^[_%a][_%w]*$") then
				writeFn(k, " = ")
			else
				writeFn("[")
				serializeRec(k, prefix2, writeFn)
				writeFn("] = ")
			end
			serializeRec(v, prefix2, writeFn)
			writeFn(",\n", prefix2)				
		end			

		writeFn("\n", prefix, "}")
	else
		error("cannot serialize a " .. type(o))
	end
end

local function serialize2(o, writeFn)
	writeFn("function data()", "\n")
	writeFn("return ")
	serializeRec(o, "", writeFn)
	writeFn("\n", "end", "\n")
end

function serialize(o)
	serialize2(o, io.write)
	io.flush()
end

function serializeStr(o)
	local s = ""

	-- TODO not efficient

	local function write(...)
		local arg = {...}
		for i, v in ipairs(arg) do
			s = s .. v
		end
	end

	serialize2(o, write)

	return s
end
