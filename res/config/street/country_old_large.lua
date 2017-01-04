function data()
return {
	numLanes = 4,
	streetWidth = 16.0,
	sidewalkWidth = 4.0,
	sidewalkHeight = .00,
	yearFrom = 0,
	yearTo = 1925,
	upgrade = false,
	country = true,
	speed = 80.0,
	type = "country old large",
	name = _("Large country road"),
	desc = _("Four-lane road with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/country_old_medium_paving.mtl"
		},		
		streetBorder = {
			name = "",
			size = { 24, 0.520 }	
		},			
		streetLane = {
			name = "street/country_old_large_lane.mtl",
			size = { 32.0, 4.0 }
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
			size = { 32.0, 4.0 }
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
			size = { 20, 3.6 }
		},
		sidewalkBorderOuter = {
			name = "street/country_old_medium_sidewalk_border_outer.mtl",
			size = { 8.0, 4.0 }
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
	cost = 66.0,
}
end
