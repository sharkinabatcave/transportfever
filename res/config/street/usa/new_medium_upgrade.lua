function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .3,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = true,
	country = false,
	speed = 50.0,
	type = "new medium",
	materials = {
		streetPaving = {
			name = "street/new_medium_paving.mtl"
		},		
		streetBorder = {
			name = "street/new_medium_border.mtl",
			size = { 2.0, .3 }
		},			
		streetLane = {
			name = "street/new_medium_lane.mtl",
			size = { 3.0, 3.0 }
		},
		streetStripe = {
			
		},
		streetStripeMedian = {
			name = "street/new_medium_stripes.mtl",
			size = { 4.0, .5 }		
		},
		streetTram = {
			name = "street/new_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		streetBus = {
			name = "street/new_medium_bus.mtl",
			size = { 12, 2.7 }
		},
		crossingLane = {
			name = "street/new_medium_lane.mtl",
			size = { 3.0, 3.0 }
		},
		crossingBus = {
			name = "",
		},
		crossingTram = {
			name = "street/new_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		crossingCrosswalk = {
			name = "street/new_medium_crosswalk.mtl",
			size = { 2.5, 2.5 }
		},
		crossingStopline = {
			name = "street/new_medium_stopline.mtl",
			size = { 6.0, .5 }
		},
		sidewalkPaving = {
			name = "street/new_medium_sidewalk.mtl"
		},
		sidewalkLane = {	

		},
		sidewalkBorderInner = {
			name = "street/new_medium_sidewalk_border_inner.mtl",		
			size = { 3, 0.6 }
		},
		sidewalkBorderOuter = {
			name = "street/new_medium_sidewalk_border_outer.mtl",		
			size = { 1.5, 0.41602 }
		},
		sidewalkCurb = {
			name = "street/new_medium_sidewalk_curb.mtl",
			size = { 3, .35 }
		},
		sidewalkWall = {
			name = "street/new_medium_sidewalk_wall.mtl",
			size = { .3, .3 }
		}		
	},	
	assets = {
		{
			name = "asset/lamp_new.mdl",
			offset = 5.0,
			distance = 12.0,
			prob = 1.0,
			offsetOrth = 2.4,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = false,
			placeOnBridge = true,
		}, 
		{
			name = "asset/hydrant_new.mdl",
			offset = 20.0,
			distance = 70.0,
			prob = 1.0,
			offsetOrth = 0.5,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = false,
		}, 
		{
			name = "asset/tree_bed_new.mdl",
			offset = 15.0,
			distance = 30.0,
			prob = 1.0,
			offsetOrth = 2.59,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = true,
		}, 
		{
			name = "tree/usa/MountainMaple_RT.mdl",
			offset = 15.0,
			distance = 30.0,
			prob = 1.0,
			offsetOrth = 2.0,
			randRot = true,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = true,
		},
	},
	signalAssetName = "asset/ampel.mdl",
	bridges = {
		"stone_new_medium.lua",
		"iron_new_medium.lua",
	},	
}
end
