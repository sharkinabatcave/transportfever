function data()
return {
	numLanes = 4,
	streetWidth = 12.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .00,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = true,
	country = true,
	speed = 80.0,
	type = "country old large",
	materials = {
	
	
		streetPaving = {
			name = "street/country_old_medium_paving.mtl"
		},		
		streetBorder = {
			name = "",
			size = { 2.5, 0.459 }		
		},			
		streetLane = {
			name = "street/country_old_large_lane.mtl",
			size = { 32.0, 3.0 }
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
			name = "street/country_old_large_lane.mtl",
			size = { 32.0, 3.0 }
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
