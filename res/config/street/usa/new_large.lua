function data()
return {
	numLanes = 4,
	streetWidth = 16.0,
	sidewalkWidth = 4.0,
	sidewalkHeight = .3,
	yearFrom = 1925,
	yearTo = 0,	
	upgrade = false,
	country = false,
	speed = 70.0,
	type = "new large",
	name = _("Large street"),
	desc = _("Four-lane street with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/new_medium_paving.mtl",
			size = { 8.0, 8.0 }
		},		
		streetBorder = {
			name = "street/new_large_border.mtl",
			size = { 6.0, .5 }
		},			
		streetLane = {
			name = "street/new_medium_lane.mtl",
			size = { 4.0, 4.0 }
		},
		streetStripe = {
			name = "street/new_medium_stripes.mtl",
			size = { 8.0, .5 }		
		},
		streetStripeMedian = {
			name = "street/new_large_median.mtl",
			size = { 4.0, 1 }
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
			size = { 4.0, 4.0 }
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
		sidewalkPaving = {
			name = "street/new_medium_sidewalk.mtl",
			size = { 4.0, 4.0 }
		},
		sidewalkLane = {	

		},
		sidewalkBorderInner = {
			name = "street/new_medium_sidewalk_border_inner.mtl",		
			size = { 3, 0.6 }
		},
		sidewalkBorderOuter = {
			name = "street/new_medium_sidewalk_border_outer.mtl",		
			size = { 8.0, 0.41602 }
		},
		sidewalkCurb = {
			name = "street/new_medium_sidewalk_curb.mtl",
			size = { 3, .35 }
		},
		sidewalkWall = {
			name = "street/new_medium_sidewalk_wall.mtl",
			size = { 8.0, 0.41602 }
		}	
	},
	assets = {
		{
			name = "asset/lamp_new.mdl",
			offset = 5.0,
			distance = 12.0,
			prob = 1.0,
			offsetOrth = 3.4,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = false,
			placeOnBridge = true,
		}, 
		{
			name = "asset/hydrant_new.mdl",
			offset = 20.0,
			distance = 51.0,
			prob = 1.0,
			offsetOrth = 0.5,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = false,
		}, 
		{
			name = "asset/tree_bed_new.mdl",
			offset = 13.0,
			distance = 23.0,
			prob = 1.0,
			offsetOrth = 2.89,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = true,
		}, 
		{
			name = "tree/usa/MountainMaple_RT.mdl",
			offset = 13.0,
			distance = 23.0,
			prob = 1.0,
			offsetOrth = 2.8,
			randRot = true,
			oneSideOnly = false,
			alignToElevation = false,
			avoidFaceEdges = true,
		},
	},
	signalAssetName = "asset/ampel.mdl",
	bridges = {
		"stone_new_large.lua",
		"iron_new_large.lua",
	},
	cost = 88.0,
}
end
