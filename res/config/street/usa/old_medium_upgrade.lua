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
	speed = 40.0,
	type = "old medium",	
	materials = {
		streetPaving = {
			name = "street/usa/old_medium_paving.mtl"
		},		
		streetBorder = {
			name = "street/usa/old_medium_border.mtl",
			size = {8, 1}
		},			
		streetLane = {
			name = "street/usa/old_medium_lane.mtl",
			size = { 8.0, 3.0 }
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
			name = "street/usa/old_medium_lane.mtl",
			size = { 8.0, 3.0 }
		},
		crossingBus = {
		},
		crossingTram = {
			name = "street/usa/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		crossingCrosswalk = {
			name = "street/usa/old_medium_crosswalk.mtl",
			size = { 2.5, 2.5 }
		},
		sidewalkPaving = {
			name = "street/usa/old_medium_sidewalk.mtl",
			size = {6, 6}
		},
		sidewalkLane = {	
			
		},
		sidewalkBorderInner = {
			name = "street/usa/old_medium_sidewalk_border_inner.mtl",
			size = { 8.0, 1.0 }
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
			offset = 11.0,
			distance = 22.0,
			prob = 1.0,
			offsetOrth = 2.2,
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
			offsetOrth = 2.19,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
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
