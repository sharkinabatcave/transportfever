function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .0,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = false,
	country = false,
	speed = 20.0,
	type = "old small",
	name = _("Small street"),
	desc = _("Two-lane street with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/usa/old_small_paving.mtl"
		},		
		streetBorder = {
			name = "street/usa/old_medium_border.mtl",
			size = {8, 1}
		},			
		streetLane = {
			name = "street/usa/old_small_lane.mtl",
			size = { 8.0, 2.5 }
		},
		streetStripe = {
			
		},
		streetStripeMedian = {
		},
		streetTram = {
			name = "street/usa/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		streetBus = {
		},
		crossingLane = {
			name = "street/usa/old_small_lane.mtl",
			size = { 8.0, 3.0 }
		},
		crossingBus = {
		},
		crossingTram = {
			name = "street/usa/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		crossingCrosswalk = {
		},
		sidewalkPaving = {
			name = "street/usa/old_medium_sidewalk.mtl",
			size = {6, 6}
		},
		sidewalkLane = {	
			
		},
		sidewalkBorderInner = {
			name = "street/usa/old_medium_sidewalk_border_inner.mtl",
			size = { 8, 1 }
		},
		sidewalkBorderOuter = {
			name = "street/usa/old_medium_sidewalk_border_outer.mtl",
			size = { 12.0, 3.0 }
		},
		sidewalkCurb = {

		},
		sidewalkWall = {

		}		
	},	
	assets = {
		{
			name = "asset/hydrant_old.mdl",
			offset = 20.0,
			distance = 50.0,
			prob = 1.0,
			offsetOrth = 0.4,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = false,
		}, 
		{
			name = "asset/lamp_old.mdl",
			offset = 11.0,
			distance = 22.0,
			prob = 1.0,
			offsetOrth = 2.4,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = true,
			placeOnBridge = true,
		}, 
		{
			name = "asset/tree_bed_old.mdl",
			offset = 11.0,
			distance = 22.0,
			prob = 1.0,
			offsetOrth = 2.39,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = true,
		},
	},
	bridges = {
		"stone_old_small.lua",
		"wood_old_small.lua",
		"iron_old_small.lua",
	},
	cost = 32.0,
}
end
