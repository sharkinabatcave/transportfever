local fileFilters = {
	["model/vehicle"] = { },
	["model/tree"] = { },
	["model/industry"] = { },
	["model/other"] = { },

	multipleUnit = { },
	street = { },
	track = { },
	bridge = { },
	tunnel = { },
	railroadCrossing = { },
	construction = { },
	autoGroundTex = { },
}

function addFileFilter(cat, fn)
	local ff = fileFilters[cat]
	ff[#ff + 1] = fn
end

function applyFileFilters(cat, fileName, data)
	local function filter(filters, fileName, data)
		for i, fn in ipairs(filters) do
			if not fn(fileName, data) then
				return nil
			end
		end

		return data
	end

	if string.ends(cat, "/") then
		for k, v in pairs(fileFilters) do
			if string.starts(k, cat) then
				local result = filter(v, fileName, data)
				if result then
					return result
				end
			end
		end

		return nil
	end

	return filter(fileFilters[cat], fileName, data)
end



local modifiers = {
	loadModel = { },
	loadMultipleUnit = { },
	loadStreet = { },
	loadTrack = { },
	loadBridge = { },
	loadTunnel = { },
	loadRailroadCrossing = { },
	loadConstruction = { },
	loadSoundSet = { },
}

function addModifier(key, fun)
	table.insert(modifiers[key], fun)
end

function applyModifiers(key, name, data)
	for i, v in ipairs(modifiers[key]) do
		data = v(name, data)
	end

	return data
end



local i18n = { }

function setStrings(mod, strings)
	i18n[mod] = {
		strings = strings
	}
end

function translate(mod, locale, id)
	if not i18n[mod] then
		return id
	end

	local strings = i18n[mod].strings

	local result

	if strings[locale] then
		result = strings[locale][id]
	end

	if not result and locale ~= "en" then
		if strings["en"] then
			result = strings["en"][id]
		end
	end

	if not result then
		result = id
	end
	
	--print(mod .. " " .. locale .. " " .. id .. " => " .. result)
	return result
end

function translate2(mod, locale, id)
	local txt = translate(mod, locale, id)
	if txt ~= id then
		return txt
	end

	return getTextRes(id)
end
