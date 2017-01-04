local ffu = require "filefilterutil"

function data()
return {
	--[[info = {

	},]]
	categories = {
		{ key = "vehicles", name = _("Vehicles") },
		{ key = "terrain", name = _("Terrain") },
		{ key = "nameList", name = _("Town names") },
		{ key = "trees", name = _("Trees") },
		{ key = "buildings", name = _("Buildings") },
		{ key = "streets", name = _("Streets") },
		{ key = "environment", name = _("Environment") },
		{ key = "scenario", name = _("Scenario") },
	},
	options = {
		vehicles = { { "all", _("All") }, { "default", _("European") }, { "usa", _("American") } },
		terrain = { { "default", _("European") }, { "usa", _("American") } },
		nameList = {
			{ "default", _("Default") },
			{ "england", _("English") },
			{ "france", _("French") },
			{ "germany", _("German") },
			{ "italy", _("Italian") },
			{ "korea", _("Korean") },
			{ "netherlands", _("Dutch") },
			{ "norway", _("Norwegian") },
			{ "russia", _("Russian") },
			{ "spain", _("Spanish") },
			{ "sweden", _("Swedish") },
			{ "usa", _("American") }
		},
		trees = { { "all", _("All") }, { "default", _("European") }, { "usa", _("American") } },
		buildings = { { "all", _("All") }, { "default", _("European") }, { "usa", _("American") } },
		streets = { { "default", _("European") }, { "usa", _("American") } },
		environment = { { "default", _("European") }, { "usa", _("American") } },
		scenario = { { "default", _("Europe") }, { "usa", _("USA") } },
	},
	runFn = function (settings)
		local baseNonUsa = function (fileName, data)
				return ffu.package.base(fileName, data) and not string.find(fileName, "/usa/")
			end

		local baseUsa = function (fileName, data)
				return ffu.package.base(fileName, data) and string.find(fileName, "/usa/")
			end

		local baseOrMod = ffu.util.combineOr({ baseNonUsa, ffu.package.mod })
		local usaOrMod = ffu.util.combineOr({ baseUsa, ffu.package.mod })

		if settings.vehicles == "default" then
			addFileFilter("model/vehicle", baseOrMod)
			addFileFilter("multipleUnit", baseOrMod)
		elseif settings.vehicles == "usa" then
			--addFileFilter("model/vehicle", usaOrMod)
			
			addFileFilter("model/vehicle", function (fileName, data)
					if usaOrMod(fileName, data) then return true end
		
					if string.starts(fileName, "res/models/model/vehicle/plane/") then return true end
					if string.starts(fileName, "res/models/model/vehicle/ship/") then return true end
				
					return false
				end)
			
			addFileFilter("multipleUnit", usaOrMod)
		end

		if settings.terrain == "usa" then
			local terCfg = game.config.terrain
			terCfg.generator.ridgeTex.fileName = "terrain/usa/ridge.tga"
			terCfg.shader.noiseTex.fileName = "terrain/usa/noise.tga"
			terCfg.groundTextures.waterGround = "usa/water_ground"
			terCfg.groundTextures.farmland = "usa/farmland"
			terCfg.groundTextures.farmlandBorder = "usa/farmland_border"
			terCfg.shader.levelColorTex.fileName = "terrain/usa/level_colors.tga"
			terCfg.shader.detailColorArrayTex.fileName = "terrain/usa/detail_color.tga"
			terCfg.shader.detailNrmlArrayTex.fileName = "terrain/usa/detail_nrml.tga"

			addFileFilter("autoGroundTex", function (fileName, data)
					if usaOrMod(fileName, data) then return true end
					if not ffu.package.base(fileName, data) then return false end

					if fileName == "res/config/auto_ground_tex/tree_1.lua" then return false end
					if fileName == "res/config/auto_ground_tex/tree_2.lua" then return false end

					return true
				end)
		end

		if settings.nameList == "default" then
			local cfg = game.config.nameList
			cfg.folder = ""
		else
			local cfg = game.config.nameList
			cfg.folder = settings.nameList
		end

		if settings.trees == "default" then
			addFileFilter("model/tree", baseOrMod)
			addFileFilter("model/industry", baseOrMod)
		elseif settings.trees == "usa" then
			addFileFilter("model/tree", usaOrMod)

			addFileFilter("model/industry", function (fileName, data)
					if usaOrMod(fileName, data) then return true end
		
					if fileName == "res/models/model/industry/coal_mine_1850.mdl" then return true end
					if fileName == "res/models/model/industry/iron_ore_mine_1850.mdl" then return true end
					if fileName == "res/models/model/industry/oil_refinery_1850.mdl" then return true end
					if fileName == "res/models/model/industry/oil_wells_1850.mdl" then return true end
					if fileName == "res/models/model/industry/saw_mill_1850.mdl" then return true end
					if fileName == "res/models/model/industry/steel_mill_1850.mdl" then return true end
				
					return false
				end)
		end

		--[[if settings.buildings == "default" then
			addFileFilter("building", baseOrMod)
		elseif settings.buildings == "usa" then
			addFileFilter("building", usaOrMod)
		end]]

		if settings.streets == "default" then
			addFileFilter("street", baseOrMod)
		elseif settings.streets == "usa" then
			game.config.townMajorStreetAngleRange = .0

			addFileFilter("street", function (fileName, data)
					if usaOrMod(fileName, data) then return true end

					if fileName == "res/config/street/country_new_small.lua" then return true end
					if fileName == "res/config/street/country_new_medium.lua" then return true end
					if fileName == "res/config/street/country_new_medium_upgrade.lua" then return true end
					if fileName == "res/config/street/country_new_large.lua" then return true end
					if fileName == "res/config/street/country_new_large_upgrade.lua" then return true end
					if fileName == "res/config/street/country_new_x_large.lua" then return true end
					if fileName == "res/config/street/country_new_x_large_upgrade.lua" then return true end
		
					if fileName == "res/config/street/new_small.lua" then return true end
				
					return false
				end)
		end

		if settings.environment == "usa" then
			local envCfg = game.config.environment
			envCfg.envMap.texture = "usa/c.tga"
		end

		if settings.scenario == "default" then
			addFileFilter("model/other", baseOrMod)
			addFileFilter("bridge", baseOrMod)
			addFileFilter("tunnel", baseOrMod)
			addFileFilter("railroadCrossing", baseOrMod)
			addFileFilter("construction", baseOrMod)
			addFileFilter("autoGroundTex", baseOrMod)
		elseif settings.scenario == "usa" then
			addFileFilter("construction", function (fileName, data)
					if usaOrMod(fileName, data) then return true end
					if not ffu.package.base(fileName, data) then return false end
			
					return true
				end)
		end
	end
}
end
