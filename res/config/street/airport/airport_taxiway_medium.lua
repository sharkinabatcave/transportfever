function data()
return {
	numLanes = 1,
	streetWidth = 20.0,
	sidewalkWidth = 8.0,
	sidewalkHeight = 0.0,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = true,
	country = false,
	speed = 30.0,
	priority = 0,
	transportModesStreet = { "AIRCRAFT" },
	transportModesSidewalk = { },
	lodDistFrom = 5000,
	lodDistTo = 10000,
	name = "Medium airport taxiway",
	desc = "Medium airport taxiway with a speed limit of %2%",
	materials = {
		streetPaving = {
			name = "street/airport/airport_runway_medium_paving.mtl",
			size = { 16.0, 16.0 }
		},		
		streetBorder = {
			name = "street/airport/airport_taxiway_medium_border.mtl",
			size = { 32, 2.0 }		
		},			
		streetLane = {
			name = "street/airport/airport_taxiway_medium_lane.mtl",
			size = { 32.0, 8.0 }
		},
		streetStripe = {
			name = "street/airport/airport_taxiway_medium_middle_stripe.mtl",
			size = { 32.0,  0.5 }		
		},
		streetStripeMedian = {
			name = "street/airport/airport_taxiway_medium_middle_stripe.mtl",
			size = { 32, 0.5 }		
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
			name = "street/airport/airport_taxiway_medium_lane.mtl",
			size = { 32.0, 8.0 }
		},
		crossingStripeMedian = {
			name = "street/airport/airport_taxiway_medium_middle_stripe.mtl",
			size = { 32, 0.5 }
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
		junctionBorder = {
			name = "street/airport/airport_taxiway_medium_border.mtl",
			size = { 32, 2.0 }		
		},	
		junctionLane = {
			name = "street/airport/airport_taxiway_medium_lane.mtl",
			size = { 32.0, 8.0 }
		},
		junctionStripeMedian = {
			name = "street/airport/airport_taxiway_medium_middle_stripe.mtl",
			size = { 50, 0.5 }		
		},
		junctionLine = {
			name = "street/airport/airport_taxiway_medium_junction_line.mtl",
			size = { 32, 0.5 }		
		},	
		sidewalkPaving = {
			name = "street/airport/airport_runway_medium_paving.mtl",
			size = { 16.0, 16.0 }
					
		},
		sidewalkLane = {
			name = "street/airport/airport_runway_medium_sidewalk_lane.mtl",
			size = { 32.0, 4.0 }
			
		},
		sidewalkBorderInner = {
			name = "street/airport/airport_runway_medium_sidewalk_border_inner.mtl",
			size = { 32.0, 2.0 }
			
		},
		sidewalkBorderOuter = {
			name = "street/airport/airport_taxiway_medium_sidewalk_border_outer.mtl",
			size = { 32.0, 2.0 }
			
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
	cost = 42.0,
}
end
