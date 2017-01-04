function data()
return {
	numLanes = 4,
	streetWidth = 16.0,
	sidewalkWidth = 4.0,
	sidewalkHeight = .02,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = false,
	country = true,
	speed = 100.0,
	type = "country new large",
	name = _("Large country road"),
	desc = _("Four-lane road with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/country_new_medium_paving.mtl",
			size = { 8.0, 8.0 }
		},		
		streetBorder = {
			name = "street/country_new_large_border.mtl",
			size = { 24, 0.459 }		
		},			
		streetLane = {
			name = "street/country_new_medium_lane.mtl",
			size = { 3.0, 3.0 }
		},
		streetStripe = {
			name = "street/country_new_medium_stripes.mtl",
			size = { 32.0, .5 }		
		},
		streetStripeMedian = {
			name = "street/country_new_large_median.mtl",
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
			name = "street/country_new_medium_lane.mtl",
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
			name = ""		
		},
		sidewalkPaving = {
			name = ""		
		},
		sidewalkLane = {	
		},
		sidewalkBorderInner = {
			name = "street/country_new_large_sidewalk_border_inner.mtl",		
			size = { 15, 3.6 }
		},
		sidewalkBorderOuter = {
		},
		sidewalkCurb = {
		},
		sidewalkWall = {
		}	
	},
	assets = {	
		{
			name = "asset/railing_new_start.mdl",
			offset = 13.5,
			distance = 0,
			prob = 1.0,
			offsetOrth = .0,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = true,
		}, 
		{
			name = "asset/railing_new.mdl",
			offset = 20.0,
			distance = 7.5,
			prob = 1.0,
			offsetOrth = .0,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = true,
		}, 
	},
	bridges = {
		"stone_new_country_large.lua",
		"iron_new_country_large.lua",
	},
	cost = 66.0,
}
end
