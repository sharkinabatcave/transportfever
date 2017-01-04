function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .00,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = true,
	country = true,
	speed = 80.0,
	type = "country new medium",
	materials = {
		streetPaving = {
			name = "street/country_new_medium_paving.mtl",
			size = { 8.0, 8.0 }
		},		
		streetBorder = {
			name = "street/country_new_large_border.mtl",
			size = { 24, 0.459 }	
		},	
		junctionBorder = {	
			name = "street/country_new_large_border.mtl",
			size = { 24, 0.459 }
		
		},			
		streetLane = {
			name = "street/new_medium_lane.mtl",
			size = { 3.0, 3.0 }
		},
		streetStripe = {
			
		},
		streetStripeMedian = {
			name = "street/country_new_medium_stripes.mtl",
			size = { 32.0, .5 }		
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
			name = ""		
		},
		sidewalkPaving = {
			name = ""		
		},
		sidewalkLane = {	
		},
		sidewalkBorderInner = {
			name = "street/country_new_medium_sidewalk_border_inner.mtl",		
			size = { 16, 3 }
		},
		sidewalkBorderOuter = {
		},
		sidewalkCurb = {
		},
		sidewalkWall = {
		}	
	},
	bridges = {
		"stone_new_country_medium.lua",
		"iron_new_country_medium.lua",
	},	
}
end
