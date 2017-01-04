function data()
return {
	numLanes = 2,
	streetWidth = 6.0,
	sidewalkWidth = 3.0,
	sidewalkHeight = .0,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = false,
	country = true,
	speed = 60.0,
	type = "country new small",
	name = _("Small country road"),
	desc = _("Two-lane road with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/country_new_medium_paving.mtl",
			size = { 8.0, 8.0 }
		},		
		streetBorder = {
			name = "street/country_new_medium_sidewalk_border_inner.mtl",		
			size = { 8.0, 0.5 }
		
		},			
		streetLane = {
			name = "street/country_new_medium_lane.mtl",
			size = { 2.5, 2.5 }
		},
		streetStripe = {

		},
		streetStripeMedian = {

		},
		streetBus = {
		
		},
		streetTram = {
			name = "street/new_medium_tram.mtl",
			size = { 2.0, 2.0 }
		},
		junctionBorder = {
			name = "street/country_new_medium_sidewalk_border_inner.mtl",		
			size = { 8.0, 0.5 }		
		},
		crossingLane = {
			name = "street/country_new_medium_lane.mtl",
			size = { 2.5, 2.5 }
		},
		crossingBus = {
			name = ""		
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
		"stone_new_country_small.lua",
		"iron_new_country_small.lua",
	},
	cost = 24.0,
}
end
