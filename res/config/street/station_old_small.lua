function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .0,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = true,
	country = false,
	speed = 20.0,
	type = "station old small",
	name = _("Small street"),
	desc = _("Two-lane street with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/old_small_paving.mtl",
			size = { 6.0, 6.0 }
		},
--[[		
		streetBorder = {
			name = "street/old_medium_border.mtl",
			size = {8,0.8}
		},
--]]
		streetLane = {
			name = "street/old_small_lane.mtl",
			size = { 8.0, 2.5 }
		},
		streetStripe = {
			
		},
		streetStripeMedian = {
		},
		streetTram = {
			name = "street/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		streetBus = {
		},
		crossingLane = {
			name = "street/old_small_lane.mtl",
			size = { 8.0, 3.0 }
		},
		crossingBus = {
		},
		crossingTram = {
			name = "street/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		crossingCrosswalk = {
		},
		sidewalkPaving = {
			name = "street/old_small_paving.mtl",
			size = { 6.0, 6.0 }
		},
		sidewalkLane = {	

		},
--[[
		sidewalkBorderInner = {
			name = "street/old_medium_sidewalk_border_inner.mtl",
			size = { 8.0, 1.2 }
		},
--]]
		sidewalkBorderOuter = {
			name = "street/old_medium_sidewalk_border_outer.mtl",
			size = { 3.0, 0.6 }
		},
		sidewalkCurb = {
			name = "street/old_medium_sidewalk_curb.mtl",
			size = {8.0,.3}
		},
		sidewalkWall = {
			name = "street/old_medium_sidewalk_wall.mtl",
			size = {.3,.3}
		}		
	},	
	assets = {
		{
			name = "asset/hydrant_old.mdl",
			offset = 20.0,
			distance = 50.0,
			prob = 1.0,
			offsetOrth = 0.2,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = false,
		}, 
		Lamp = {
			name = "asset/lamp_old.mdl",
			offset = 5.0,
			distance = 17.0,
			prob = 1.0,
			offsetOrth = 0.1,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = false,
			placeOnBridge = true,
		}
	},
	bridges = {
		"stone_old_small.lua",
		"wood_old_small.lua",
		"iron_old_small.lua",
	},
	cost = 32.0,
}
end
