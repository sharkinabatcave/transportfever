function data()
return {
	numLanes = 1,
	streetWidth = 20.0,
	sidewalkWidth = 8.0,
	sidewalkHeight = 0,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = true,
	country = true,
	speed = 35.0,
	transportModesStreet = { "AIRCRAFT" },
	transportModesSidewalk = { },
	lodDistFrom = 5000,
	lodDistTo = 10000,
	name = _("Medium country road"),
	desc = _("Two-lane road with a speed limit of %2%"),
	materials = {
		streetPaving = {
			name = "street/airport/airport_runway_small_paving.mtl",
			size = { 16, 16}
		},		
		streetBorder = {
			name = "street/airport/airport_runway_small_border.mtl",
			size = { 32, 2.0 }		
		},			
		streetLane = {
			name = "street/airport/airport_runway_small_lane.mtl",
			size = { 32.0, 8.0 }
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
			name = "street/airport/airport_runway_small_lane.mtl",
			size = { 32.0, 8.0 }
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
			name = "",
			size = { 32.0, 8.0 }		
		},
		sidewalkBorderInner = {
			name = "street/airport/airport_runway_small_sidewalk_lane.mtl",
			size = { 32.0, 8.0 }
		},
		sidewalkBorderOuter = {
			name = "",
			size = { 32.0, 8.0 }
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
	cost = 42.0,
}
end
