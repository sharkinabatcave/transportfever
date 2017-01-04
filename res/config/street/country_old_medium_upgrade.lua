function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .00,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = true,
	country = true,
	speed = 60.0,
	type = "country old medium",
	materials = {
		streetPaving = {
			name = "street/country_old_medium_paving.mtl",
			size = { 8.0, 8.0 }
		},		
		streetBorder = {
			name = "",
			size = { 2.5, 0.459 }		
		},			
		streetLane = {
			name = "street/country_old_small_lane.mtl",
			size = { 8.0, 4.0 }
		},
		streetStripe = {
			
		},
		streetStripeMedian = {
			name = "",
		},
		streetTram = {
			name = "street/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		streetBus = {
			name = "",
		},
		crossingLane = {
			name = "street/country_old_small_lane.mtl",
			size = { 8.0, 4.0 }
		},
		crossingBus = {
			name = "",
		},
		crossingTram = {
			name = "street/old_medium_tram.mtl",
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
			name = "",
		},
		sidewalkBorderOuter = {
			name = "street/country_old_medium_sidewalk_border_outer.mtl",
			size = { 8.0, 3.0 }
		},
		sidewalkCurb = {
		},
		sidewalkWall = {
		}	
	},
	bridges = {
		"stone_old_country_medium.lua",
		"iron_old_country_medium.lua",
	},
}
end
