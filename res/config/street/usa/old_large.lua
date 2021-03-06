function data()
return {
	numLanes = 4,
	streetWidth = 16.0,
	sidewalkWidth = 4.0,
	sidewalkHeight = .3,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = false,
	country = false,
	speed = 60.0,
	type = "old large",
	name = _("Large street"),
	desc = _("Four-lane street with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/usa/old_large_paving.mtl"
		},		
		streetBorder = {
			name = "street/old_medium_border.mtl",
			size = {8,0.8}
		},			
		streetLane = {
			name = "street/usa/old_large_lane.mtl",
			size = { 8.0, 3.0 }
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
			name = "street/usa/old_large_lane.mtl",
			size = { 8.0, 3.0 }
		},
		crossingBus = {
		},
		crossingTram = {
			name = "street/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		crossingCrosswalk = {
			name = "street/old_medium_crosswalk.mtl",
			size = { 2.5, 2.5 }
		},
		sidewalkPaving = {
			name = "street/usa/old_large_sidewalk_paving.mtl",
			size = {3.0,3.0}
		},
		sidewalkLane = {	

		},
		sidewalkBorderInner = {
			name = "street/old_medium_sidewalk_border_inner.mtl",
			size = { 8.0, 1.2 }
		},
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
			distance = 53.0,
			prob = 1.0,
			offsetOrth = 0.5,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = false,
		}, 
		{
			name = "asset/lamp_old.mdl",
			offset = 5.0,
			distance = 17.0,
			prob = 1.0,
			offsetOrth = 3.4,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = false,
			placeOnBridge = true,
		}, 
		{
			name = "asset/tree_bed_old.mdl",
			offset = 15.0,
			distance = 22.0,
			prob = 1.0,
			offsetOrth = 2.89,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = true,
		}, 
		{
			name = "tree/usa/MountainMaple_RT.mdl",
			offset = 15.0,
			distance = 22.0,
			prob = 1.0,
			offsetOrth = 2.8,
			randRot = true,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = true,
		},
		
	},
	bridges = {
		"stone_old_medium.lua",
		"wood_old_medium.lua",
		"iron_old_medium.lua",
	},
	cost = 88.0,
}
end
