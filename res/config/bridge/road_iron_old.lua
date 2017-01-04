function data()
local dir = "bridge/road/iron/"
return {
	name = _("Steel bridge"),

	yearFrom = 0,
	yearTo = 1925,

	carriers = { "ROAD" },

	pillarBase = { dir .. "old_pillar_btm.mdl" },
	pillarRepeat = { dir .. "old_pillar_mid.mdl" },
	pillarTop = { dir .. "old_pillar_top.mdl"},
	--pillarWidth = .75,

	railingBegin = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },
	railingRepeat = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },
	railingEnd = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },

	cost = 300.0,
	

	materialsToReplace = {
		streetPaving = {
			name = "street/old_medium_paving_zero_offset.mtl",
		},
		streetBorder = {
			name = "street/old_medium_border.mtl",			
			size = {8,0.4}
		},	
		streetLane = {
			name = "street/old_medium_lane.mtl",
			size = { 8.0, 2.5 }
		},
		crossingLane = {
			name = "",
		},					
		sidewalkPaving = {
			name = "street/old_medium_sidewalk.mtl",
			size = {2,3.0}
		},
		sidewalkLane = {	
		
		},
		sidewalkBorderInner = {
			name = "street/old_medium_sidewalk_border_inner.mtl",
			size = { 8.0, 1.2 }
		},
		streetBorderOuter = {
			name = "street/old_medium_sidewalk_border_outer.mtl",
			size = { 3.0, 0.6 }
		},
	},
}
end


