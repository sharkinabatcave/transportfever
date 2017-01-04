local function isModPath(fileName)
	if string.starts(fileName, "mods/") then return true end
	if string.find(fileName, "/workshop/content/446800/") then return true end

	return false
end

local filefilterutil = {
	util = {
		always = function (fileName, data)
				return true
			end,

		combineOr = function (filters)
				return function(fileName, data)
						for i, fn in ipairs(filters) do
							if fn(fileName, data) then
								return true
							end
						end
						return false
					end
			end,

		combineAnd = function (filters)
				return function(fileName, data)
						for i, fn in ipairs(filters) do
							if not fn(fileName, data) then
								return false
							end
						end
						return true
					end
			end
	},

	package = {
		base = function (fileName, data)
				return not string.starts(fileName, "dlcs/") and not isModPath(fileName)
			end,

		mod = function (fileName, data)
				return isModPath(fileName)
			end,

		baseOrMod = function (fileName, data)
				return not string.starts(fileName, "dlcs/")
			end,

		dlcOrMod = function (dlc)
				return function (fileName, data)
						return string.starts(fileName, "dlcs/" .. dlc .. "_1/") or isModPath(fileName)
					end
			end
	},

	model = {
		vehicle = function (fileName, data)
				return data.metadata.transportVehicle ~= nil
			end,

		tree = function (fileName, data)
				return data.metadata.tree ~= nil
			end,
			
		industry = function (fileName, data)
				return data.metadata.industry ~= nil
			end,

		other = function (fileName, data)
				return not data.metadata.transportVehicle and not data.metadata.tree and not data.metadata.industry
			end
	}
}

return filefilterutil
