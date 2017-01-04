local constructionutil = require "constructionutil"
local mathutil = require "mathutil"
local polygonutil = require "polygonutil"


local townbuildingutil = { }

function townbuildingutil.make_building_ext(constructionModelId, buildingModelId, buildingFace, transf,
		availability, townBuildingParams, assets)
	return {
		type = "TOWN_BUILDING",
		description = { 
		
		},
		availability = availability,
		soundConfig = {
			soundSet = { name = "town_building" }
		},
		townBuildingParams = townBuildingParams,
		
		updateFn = function(params)
			local result = { }

			if (params.inConstruction == 1.0) then
				result.models = {
					{
						id = constructionModelId,
						transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, params.depth * .5, 0, 1 }
					}
				}

				result.groundFaces = { { face = params.parcelFace, modes = { { type = "FILL", key = "farmland_0" }, { type = "STROKE_OUTER", key = "building_paving" } } } }
			else
				result.models = {
					{
						id = buildingModelId,
						transf = transf
					}
				}

				local p1 = params.parcelFace[1]
				local p2 = params.parcelFace[#params.parcelFace / 2]
			
				local dx = p2[1] - p1[1]
			
				if assets then
					for i = 1, #assets do
						local a = assets[i]
	
						local ids = a.ids or townbuildingutil.assets[a.grp]
						
						if a.grp == "random_small_tree" and #params.state.tree.small > 0 then
							ids = params.state.tree.small
						elseif a.grp == "random_medium_tree" and #params.state.tree.medium > 0 then
							ids = params.state.tree.medium
						elseif a.grp == "random_large_tree" and #params.state.tree.large > 0 then
							ids = params.state.tree.large
						end
						
						local align = a.align
						
						if align == nil then
							align = math.abs(a.transf[15]) < .01 and true or false
						end
						
						local transf = a.transf
						if align then
							transf[15] = math.lerp(p1[3], p2[3], (transf[13] - p1[1]) / dx)
						end	
						
						local id = ids[math.random(#ids)]
						if id ~= "" then
							result.models[#result.models + 1] = { id = id, transf = transf, matConfig = a.matConfig or -1 }
						end
					end
				end

				if (townBuildingParams.landUseType == "RESIDENTIAL") then
					constructionutil.makeFence(params.parcelFace, "asset/fence_wood.mdl", 3.3734, true, result.models)
				end
				
				local transformedBuildingFace = polygonutil.transform(transf, buildingFace)
				
				result.groundFaces = { }
				
				if #transformedBuildingFace >= 3 then
					result.groundFaces[#result.groundFaces + 1] = { face = transformedBuildingFace, modes = { { type = "FILL", key = "building_paving_fill" }, { type = "STROKE_OUTER", key = "building_paving" } } }
				end
					
				if townBuildingParams.landUseType == "INDUSTRIAL" or townBuildingParams.landUseType == "COMMERCIAL" then
					result.groundFaces[#result.groundFaces + 1] = { face = params.parcelFace, modes = { { type = "FILL", key = "town_concrete" }, { type = "STROKE_OUTER", key = "town_concrete_border" } } }
				else
					if params.capacity >= 16 then
						result.groundFaces[#result.groundFaces + 1] = { face = params.parcelFace, modes = { { type = "FILL", key = "town_concrete" }, { type = "STROKE_OUTER", key = "town_concrete_border" } } }
					end
				end
			end
		
			result.terrainAlignmentLists = { {
				type = "EQUAL",
				faces =  { }
			} }
			
			result.personCapacity = {
				type = townBuildingParams.landUseType,
				capacity = params.capacity
			}
			
			if (townBuildingParams.landUseType == "INDUSTRIAL" or townBuildingParams.landUseType == "COMMERCIAL") then
				local ruleCapacity = math.floor(params.capacity / 4 + 0.5)
				if (ruleCapacity > 0) then
					result.stocks = {  }
					result.stockRules = { }

					local cargoTypes = townBuildingParams.landUseType == "INDUSTRIAL" and { "CONSTRUCTION_MATERIALS", "MACHINES", "FUEL" } or { "TOOLS", "FOOD", "GOODS" }
					local inputs = { { { 1, 0, 0 } }, { { 0, 1, 0 } }, { { 0, 0, 1 } } }
					
					for i = 1, 3 do
						result.stocks[i] = {
							cargoType = cargoTypes[i],
							type = "RECEIVING",
							edges = { },
							moreCapacity = ruleCapacity
						}
						
						result.stockRules[i] = {
							input = inputs[i],
							output = { { 0, 0, 0 } },
							capacity = ruleCapacity
						}
					end
				end			
			end
						
			result.cost = 1000
			result.bulldozeCost = 100

			return result
		end
	}
end

function townbuildingutil.make_building(constructionModelId, buildingModelId, buildingFace, transf, landUseType,
		era, size, parcelSize, assets)
	local availability = {
		yearFrom = era == "A" and 0 or (era == "B" and 1900 or 1975),
		yearTo = era == "A" and 1900 or (era == "B" and 1975 or 0)
	}
	
	local townBuildingParams = {
		landUseType = landUseType,
		value = { 3 ^ (size - 1), 3 ^ size },
		parcelSize = parcelSize,
	}

	return townbuildingutil.make_building_ext(constructionModelId, buildingModelId, buildingFace, transf,
			availability, townBuildingParams, assets)
end

townbuildingutil.assets = {
	["bench"] = {
		"asset/bench_old.mdl"
	},
	["era_a_ind_random_decoration"] = {
		"asset/industry/wooden_box_01.mdl",
		"asset/industry/wooden_box_02.mdl",
		"asset/industry/wooden_box_03.mdl",	
		"asset/industry/steal_pipes_01.mdl",	
		"asset/ground/barrel_steel.mdl",	
		"asset/ground/barrel_wood.mdl",	
		"asset/ground/container_small_steel.mdl",	
		"asset/ground/container_wood.mdl",		
		"asset/ground/wheelbarrow.mdl",		
		"asset/ground/cableroll.mdl",		
		"",		
		"",		
		"",		
		"",		
	},
	["era_b_ind_random_decoration"] = {
		"asset/industry/wooden_box_02.mdl",
		"asset/industry/wooden_box_04.mdl",	
		"asset/industry/steal_pipes_01.mdl",	
		"asset/ground/barrel_steel.mdl",	
		"asset/ground/container_small_steel.mdl",	
		"asset/ground/container_fluid.mdl",				
		"asset/ground/cableroll.mdl",		
		"asset/ground/container_waste2.mdl",		
		"asset/ground/pallet_01.mdl",		
		"asset/ground/wood_plates_01.mdl",		
		"asset/ground/wood_plates_02.mdl",		
		"",		
		"",		
		"",		
		"",		
	},
	["era_c_ind_random_decoration"] = {
		"asset/industry/wooden_box_02.mdl",
		"asset/industry/wooden_box_04.mdl",	
		"asset/industry/steal_pipes_01.mdl",	
		"asset/ground/barrel_steel.mdl",	
		"asset/ground/container_small_steel.mdl",	
		"asset/ground/container_fluid.mdl",	
		"asset/ground/container_waste2.mdl",		
		"asset/ground/container_waste3.mdl",		
		"asset/ground/container_waste3_open.mdl",		
		"asset/ground/pallet_01.mdl",		
		"asset/ground/wood_plates_01.mdl",		
		"asset/ground/wood_plates_02.mdl",		
		"",		
		"",		
		"",		
		"",		
	},
	
	["era_a_res_random_decoration"] = {
		"asset/ground/barrel_wood.mdl",	
		"asset/ground/container_wood.mdl",		
		"asset/ground/wooden_box_03.mdl",			
		"",		
		"",		
		"",		
		"",		
	},	
	["era_b_res_random_decoration"] = {
		"asset/ground/cardboard_box_01.mdl",	
		"asset/ground/container_waste1.mdl",		
		"asset/ground/container_waste2.mdl",		
		"asset/ground/container_waste3.mdl",		
		"asset/ground/container_waste3_open.mdl",		
		"asset/ground/wooden_box_02.mdl",			
		"",		
		"",		
		"",		
		"",		
	},
	["era_c_res_random_decoration"] = {
		"asset/ground/cardboard_box_01.mdl",	
		"asset/ground/container_waste1.mdl",		
		"asset/ground/container_waste2.mdl",		
		"asset/ground/container_waste3.mdl",		
		"asset/ground/container_waste3_open.mdl",		
		"asset/ground/wooden_box_02.mdl",			
		"",		
		"",		
		"",		
		"",		
	},
	["random_roof_decoration_small"] = {
		"asset/roof/ventilation_cube1.mdl",
		"asset/roof/ventilation_cube2.mdl",
		"asset/roof/ventilation_end_curved.mdl",
		"asset/roof/ventilation_sphere1.mdl",
		"",
	},
	["random_roof_decoration_large"] = {
		"asset/roof/generator1.mdl",
		"asset/roof/ventfan1.mdl",
		"asset/roof/ventfan2.mdl",
		"",
	},
	["solar_panel_on_off"] = {
		"asset/roof/solar_panel1.mdl",
		"",
	},
	["era_c_pavillion_on_off"] = {
		"asset/ground/garden_sun_pavillion_01.mdl",
		"",
	},
	["era_a_com_random_decoration"] = {
		"asset/industry/wooden_box_01.mdl",
		"asset/industry/wooden_box_02.mdl",
		"asset/industry/wooden_box_03.mdl",		
		"asset/ground/barrel_wood.mdl",		
		"asset/ground/container_wood.mdl",		
		"industry/cargo/livestock_small.mdl",		
		"industry/cargo/grain_small.mdl",		
		"industry/cargo/food_small.mdl",	
		"",		
		"",		
		"",		
	},
	["era_b_com_random_decoration"] = {	
		"asset/ground/barrel_steel.mdl",		
		"asset/ground/container_waste1.mdl",		
		"asset/ground/container_waste3.mdl",		
		"asset/ground/container_waste3_open.mdl",		
		"asset/ground/cardboard_box_02.mdl",		
		"industry/cargo/livestock_small.mdl",		
		"industry/cargo/grain_small.mdl",		
		"industry/cargo/food_small.mdl",	
		"",		
		"",		
		"",		
	},
	["era_b_com_1_ground_box"] = {
		"building/era_b/com_1_asset_ground_box_01.mdl",
		"building/era_b/com_1_asset_ground_box_02.mdl",
	},
	["era_b_com_1_ground_food_booth"] = {
		"building/era_b/com_1_asset_ground_food_booth_01.mdl",
		"building/era_b/com_1_asset_ground_food_booth_02.mdl",
	},
	["era_b_com_1_ground_sign"] = {
		"building/era_b/com_1_asset_ground_sign_01.mdl",
		"building/era_b/com_1_asset_ground_sign_02.mdl",
	},
	["era_b_com_1_wall_sign_big"] = {
		"building/era_b/com_1_asset_wall_sign_04.mdl",
		"building/era_b/com_1_asset_wall_sign_05.mdl",
	},
	["era_b_com_1_wall_sign_small"] = {
		"building/era_b/com_1_asset_wall_sign_02.mdl",
		"building/era_b/com_1_asset_wall_sign_03.mdl",
	},
	["era_b_com_1_wall_store_sign_big"] = {
		"building/era_b/com_1_asset_wall_store_sign_01.mdl",
		"building/era_b/com_1_asset_wall_store_sign_02.mdl",
		"building/era_b/com_1_asset_wall_store_sign_03.mdl",
	},	
	["era_b_com_1_wall_store_sign_small"] = {	
		"building/era_b/com_1_asset_wall_store_sign_04.mdl",
		"building/era_b/com_1_asset_wall_store_sign_05.mdl",
	},
	["era_b_com_2_to_3_wall_sign_big"] = {	
		"building/era_b/com_2_to_3_asset_wall_sign_02.mdl",
		"building/era_b/com_2_to_3_asset_wall_sign_04.mdl",
	},
	["era_b_com_2_to_3_wall_sign_small"] = {	
		"building/era_b/com_2_to_3_asset_wall_sign_01.mdl",
		"building/era_b/com_2_to_3_asset_wall_sign_03.mdl",
	},
	["era_b_com_2_to_3_wall_store_sign"] = {
		"building/era_b/com_2_to_3_asset_wall_store_sign_01.mdl",
		"building/era_b/com_2_to_3_asset_wall_store_sign_02.mdl",
		"building/era_b/com_2_to_3_asset_wall_store_sign_04.mdl",
		"building/era_b/com_2_to_3_asset_wall_store_sign_05.mdl",
	},
	["era_b_com_2_to_3_wall_store_sign_small"] = {
		"building/era_b/com_2_to_3_asset_wall_store_sign_06.mdl",
		"building/era_b/com_2_to_3_asset_wall_store_sign_07.mdl",
	},
	["era_c_com_random_decoration"] = {	
		"asset/ground/barrel_steel.mdl",		
		"asset/ground/container_waste1.mdl",		
		"asset/ground/container_waste3.mdl",		
		"asset/ground/container_waste3_open.mdl",		
		"asset/ground/cardboard_box_02.mdl",		
		"industry/cargo/livestock_small.mdl",		
		"industry/cargo/grain_small.mdl",		
		"industry/cargo/food_small.mdl",	
		"",		
		"",		
		"",		
	},
	["era_a_com_1_box"] = {
		"building/era_a/com_1_asset_ground_box.mdl",
		"building/era_a/com_1_asset_ground_empty_box.mdl",
	},
	["era_a_com_1_food_booth"] = {
		"building/era_a/com_1_asset_ground_food_booth_01.mdl",
		"building/era_a/com_1_asset_ground_food_booth_02.mdl",
		"building/era_a/com_1_asset_ground_food_booth_03.mdl",
		"building/era_a/com_1_asset_ground_food_booth_04.mdl",
		"building/era_a/com_1_asset_ground_food_booth_05.mdl",
	},
	["era_a_com_1_wall_sign"] = {
		"building/era_a/com_1_asset_wall_sign_01.mdl",
		"building/era_a/com_1_asset_wall_sign_02.mdl",
		"building/era_a/com_1_asset_wall_sign_06.mdl",
		"building/era_a/com_1_asset_wall_sign_07.mdl",
	},	
	["era_a_com_1_wall_sign_big"] = {		
		"building/era_a/com_1_asset_wall_sign_03.mdl",
		"building/era_a/com_1_asset_wall_sign_04.mdl",
		"building/era_a/com_1_asset_wall_sign_05.mdl",		
	},
	["era_a_com_1_ground_sign"] = {		
		"building/era_a/com_1_asset_ground_sign_01.mdl",
		"building/era_a/com_1_asset_ground_sign_02.mdl",				
	},
	["era_a_com_1_wall_store_sign"] = {
		"building/era_a/com_1_asset_wall_store_sign_01.mdl",
		"building/era_a/com_1_asset_wall_store_sign_02.mdl",
		"building/era_a/com_1_asset_wall_store_sign_03.mdl",
		"building/era_a/com_1_asset_wall_store_sign_04.mdl",		
	},
	["era_a_com_2_wall_sign"] = {
		"building/era_a/com_2_asset_wall_sign_01.mdl",	
		"building/era_a/com_2_asset_wall_sign_02.mdl",	
		"building/era_a/com_2_asset_wall_sign_03.mdl",	
	},
	["era_a_com_2_roof_sign"] = {
		"building/era_a/com_2_asset_roof_sign_01.mdl",	
		"building/era_a/com_2_asset_roof_sign_02.mdl",	
		"building/era_a/com_2_asset_roof_sign_03.mdl",	
	},
	["era_a_com_2_wall_store_sign"] = {
		"building/era_a/com_2_asset_wall_store_sign_01.mdl",
		"building/era_a/com_2_asset_wall_store_sign_04.mdl",		
		"building/era_a/com_2_asset_wall_store_sign_05.mdl",		
		"building/era_a/com_2_asset_wall_store_sign_06.mdl",		
		"building/era_a/com_2_asset_wall_store_sign_07.mdl",		
	},
	["era_a_com_2_wall_store_sign_big"] = {
		"building/era_a/com_2_asset_wall_store_sign_02.mdl",
		"building/era_a/com_2_asset_wall_store_sign_03.mdl",		
	},	
	["era_a_com_2_wall_awning_04"] = {
		"building/era_a/com_2_asset_wall_awning_04_open.mdl",
		"building/era_a/com_2_asset_wall_awning_04_open.mdl",
		"building/era_a/com_2_asset_wall_awning_04_open.mdl",
		"building/era_a/com_2_asset_wall_awning_04_open.mdl",
		"building/era_a/com_2_asset_wall_awning_04_closed.mdl",	
	},	
	["era_c_com_2_to_4_wall_sign_small"] = {
		"building/era_c/com_2_to_4_asset_wall_sign_01.mdl",
		"building/era_c/com_2_to_4_asset_wall_sign_05.mdl",
	},		
	["era_c_com_2_to_4_wall_sign_large"] = {
		"building/era_c/com_2_to_4_asset_wall_sign_03.mdl",
		"building/era_c/com_2_to_4_asset_wall_sign_04.mdl",
	},	
	["era_c_com_2_to_4_wall_store_sign"] = {
		"building/era_c/com_2_to_4_asset_wall_store_sign_02.mdl",
		"building/era_c/com_2_to_4_asset_wall_store_sign_03.mdl",
	},	
	["silo_horizontal"] = {
		"asset/ground/silo_horizontal_01.mdl",
		"asset/ground/silo_horizontal_02.mdl",
		"asset/ground/silo_horizontal_03.mdl",
		"",		
	},	
	["silo_vertical"] = {
		"asset/ground/silo_vertical_10m_01.mdl",
		"asset/ground/silo_vertical_10m_02.mdl",
		"asset/ground/silo_vertical_10m_03.mdl",
		"asset/ground/silo_vertical_10m_04.mdl",
		"asset/ground/silo_vertical_11m_01.mdl",
		"asset/ground/silo_vertical_11m_02.mdl",
		"asset/ground/silo_vertical_11m_03.mdl",
		"asset/ground/silo_vertical_14m_01.mdl",
		"asset/ground/silo_vertical_14m_02.mdl",
		"asset/ground/silo_vertical_14m_03.mdl",
		"asset/ground/silo_vertical_14m_04.mdl",
		"asset/ground/silo_vertical_stilted_9m_01.mdl",
		"asset/ground/silo_vertical_stilted_9m_02.mdl",
		"asset/ground/silo_vertical_stilted_9m_03.mdl",
		"",
	},	
	["silo_special"] = {
		"asset/ground/silo_spherical_01.mdl",
		"asset/ground/silo_spherical_02.mdl",
		"asset/ground/silo_spherical_03.mdl",
		"asset/ground/silo_vertical_3m_01.mdl",
		"asset/ground/silo_vertical_3m_02.mdl",
		"asset/ground/silo_vertical_3m_03.mdl",
		"",
	},	
	["garden_sunshade_large_01"] = {
		"asset/ground/garden_sunshade_large_01.mdl",
		"asset/ground/garden_sunshade_large_01.mdl",
		"asset/ground/garden_sunshade_large_closed_01.mdl",
		"",
	},	
	["garden_sunshade_large_02"] = {
		"asset/ground/garden_sunshade_large_02.mdl",
		"asset/ground/garden_sunshade_large_02.mdl",
		"asset/ground/garden_sunshade_large_closed_02.mdl",
		"",
	},	
	["garden_sunshade_small"] = {
		"asset/ground/garden_sunshade_small_01.mdl",
		"asset/ground/garden_sunshade_small_02.mdl",	
		"asset/ground/garden_sunshade_small_01.mdl",
		"asset/ground/garden_sunshade_small_02.mdl",		
		"",
	},	
	["random_medium_tree"] = {
		"tree/easternredcedar_rt_1.mdl",
		"tree/easternredcedar_rt_2.mdl",
		"tree/europeanlinden_rt_2.mdl",
		"tree/fraserfir_rt_1.mdl",
		"tree/fraserfir_rt_2.mdl",
		"tree/fraserfir_rt_3.mdl",
		"tree/japanesemaple_rt_1.mdl",
		"tree/japanesemaple_rt_2.mdl",
		"tree/japanesemaple_rt_3.mdl",
		"tree/orangetree_1_rt_1.mdl",
		"tree/orangetree_1_rt_2.mdl",
		"tree/orangetree_1_rt_3.mdl",
		"tree/shingleoak_rt_1.mdl",
		"tree/shingleoak_rt_4.mdl",
		"tree/whitebirch_rt_2.mdl",
		"tree/whitebirch_rt_3.mdl",
		"tree/whitebirch_rt_4.mdl",
		--[[
		"tree/usa/AlaskaCedar_RT_2.mdl",
		"tree/usa/BlueSpruce_RT_1.mdl",
		"tree/usa/BlueSpruce_RT_2.mdl",
		"tree/usa/JoshuaTree_RT.mdl",
		"tree/usa/MountainMaple_RT.mdl",
		]]--
		
	},	
	["random_large_tree"] = {
		"tree/douglasfir_rt_1.mdl",
		"tree/douglasfir_rt_3.mdl",
		"tree/europeanlinden_rt_1.mdl",
		"tree/europeanlinden_rt_3.mdl",
		"tree/europeanlinden_rt_5.mdl",
		"tree/sampleconifer_rt_2.mdl",
		"tree/shingleoak_rt_2.mdl",
		"tree/shingleoak_rt_3.mdl",
		"tree/sugarmaple_rt_1.mdl",
		"tree/sugarmaple_rt_3.mdl",
		
		--[[
		"tree/usa/AlaskaCedar_RT_1.mdl",
		"tree/usa/WesternJuniper_RT_1.mdl",
		"tree/usa/WesternJuniper_RT_2.mdl",
		"tree/usa/WhiteFir_RT_1.mdl",
		"tree/usa/WhiteFir_RT_2.mdl.mdl",
		]]--
	},	
	["random_small_tree"] = {
		"tree/americanboxwood_rt_1.mdl",
		"tree/americanboxwood_rt_2.mdl",
		"tree/azalea_rt_1.mdl",
		"tree/azalea_rt_2.mdl",
		"tree/commonhazel_rt_2.mdl",
		"tree/commonhazel_rt_3.mdl",
		"tree/commonhazel_rt_4.mdl",
		"tree/mapleshrub_rt_1.mdl",
		"tree/mapleshrub_rt_2.mdl",
		"tree/mapleshrub_rt_3.mdl",
		"tree/mapleshrub_rt_4.mdl",
		"tree/mapleshrub_rt_5.mdl",
		"tree/mapleshrub_rt_6.mdl",
		"tree/mapleshrub_rt_7.mdl",
		--[[
		"tree/usa/ChollaCactus_RT.mdl",
		"tree/usa/Horseweed_RT.mdl",
		"tree/usa/Ocotillo_RT.mdl",
		"tree/usa/Sagebrush_RT.mdl",
		"tree/usa/Sagebrush_RT_Bush.mdl",
		"tree/usa/ThickGrass_RT.mdl",
		"tree/usa/WesternSwordFern_RT.mdl",
		]]--
	},	
	
	["random_shrub_europe"] = {
		"tree/americanboxwood_rt_1.mdl",
		"tree/americanboxwood_rt_2.mdl",
		"tree/azalea_rt_1.mdl",
		"tree/azalea_rt_2.mdl",
		"tree/commonhazel_rt_3.mdl",
	},	
	
	["random_shrub_usa"] = {
		"tree/usa/Sagebrush_RT_Bush.mdl",
		"tree/usa/ThickGrass_RT.mdl",
		"tree/usa/WesternSwordFern_RT.mdl",
	},	
	
	
}

function townbuildingutil.get_assets(category)
	return townbuildingutil.assets[category]
end

function townbuildingutil.make_material_lod_1_metallic(map_albedo_fn, map_metal_gloss_ao_fn)
	return {
		params = {
			two_sided = {
				flipNormal = false,
				twoSided = false,
				
			},
			fade_out_range = {
				fadeOutEndDist = 20000,
				fadeOutStartDist = 10000,
			},
			map_albedo = {
				compressionAllowed = true,
				fileName = map_albedo_fn,
				magFilter = "LINEAR",
				minFilter = "LINEAR_MIPMAP_LINEAR",
				mipmapAlphaScale = 0,
				type = "TWOD",
				wrapS = "CLAMP_TO_EDGE",
				wrapT = "CLAMP_TO_EDGE",
			},
			map_metal_gloss_ao = {
				compressionAllowed = true,
				fileName = map_metal_gloss_ao_fn,
				magFilter = "LINEAR",
				minFilter = "LINEAR_MIPMAP_LINEAR",
				mipmapAlphaScale = 0,
				type = "TWOD",
				wrapS = "CLAMP_TO_EDGE",
				wrapT = "CLAMP_TO_EDGE",
			},
			polygon_offset = {
				factor = 0,
				units = 0,			
			},
			map_op_1 = {
				fileName = "buildings/dirtmap.tga",
				magFilter = "LINEAR",
				minFilter = "LINEAR_MIPMAP_LINEAR",
			},
			map_op_2 = {
				fileName = "buildings/overlay.tga",
				magFilter = "LINEAR",
				minFilter = "LINEAR_MIPMAP_LINEAR",
			},
			operation_1 = {
				op = "LINEAR_BURN",
				mode = "NORMAL",
				scale = { 1.0 / 40.0, 1.0 / 40.0 },
				opacity = .5
			}, 
			operation_2 = {
				op = "OVERLAY",
				mode = "NORMAL",
				scale = { 1.0 / 217.0, 1.0 / 217.0 },
				opacity = 1.0
			}		
		},
		type = "PHYSICAL_OP",	
	}
end

return townbuildingutil
