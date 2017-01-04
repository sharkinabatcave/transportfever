function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .0,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = false,
	country = true,
	speed = 40.0,
	type = "country old small",
	name = _("Small country road"),
	desc = _("Two-lane road with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/usa/country_old_medium_paving.mtl",
			size = { 8.0, 8.0 }
		},		
		streetBorder = {
			name = "",
			size = { 16.0, 2.0 }
		},			
		streetLane = {
			name = "street/usa/country_old_small_lane.mtl",
			size = { 8.0, 4.0 }
		},
		streetStripe = {
			
		},
		streetStripeMedian = {
			name = "",
			size = { 16.0, 2.0 }
		},
		streetTram = {
			name = "street/old_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		streetBus = {
			name = "",
		},
		crossingLane = {
			name = "street/usa/country_old_small_lane.mtl",
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
			name = "",		
		},
		sidewalkPaving = {
			name = "",
			size = { 16.0, 16.0 }
		},
		sidewalkLane = {	
		},
		sidewalkBorderInner = {
			name = "",
			size = { 16.0, 3.0 }
		},
		sidewalkBorderOuter = {
			name = "street/usa/country_old_medium_sidewalk_border_outer.mtl",
			size = { 8.0, 4.0 }
		},
		sidewalkCurb = {
		},
		sidewalkWall = {
		}	
	},
	bridges = {
		"stone_old_country_small.lua",
		"wood_old_country_small.lua",
		"iron_old_country_small.lua",
	},
	cost = 24.0,
}
end
