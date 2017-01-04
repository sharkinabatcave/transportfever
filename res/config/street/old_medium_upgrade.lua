function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .3,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = true,
	country = false,
	speed = 40.0,
	type = "old medium",	
	materials = {
		streetPaving = {
			name = "street/old_medium_paving.mtl"
		},		
		streetBorder = {
			name = "street/old_medium_border.mtl",
			size = {8,0.8}
		},			
		streetLane = {
			name = "street/old_medium_lane.mtl",
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
			name = "street/old_medium_lane.mtl",
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
			name = "street/old_medium_sidewalk.mtl",
			size = {5.0,5.0}
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
			offsetOrth = 0.4,
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
			offsetOrth = 2.3,
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
			offsetOrth = 1.89,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = true,
		}, 
		{
			name = "tree/whitebirch_rt_5.mdl",
			offset = 15.0,
			distance = 22.0,
			prob = 1.0,
			offsetOrth = 1.8,
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
}
end
