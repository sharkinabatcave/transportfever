function data()
local dir = "bridge/road/stone/"
return {
	name = _("Stone bridge"),

	yearFrom = 0,
	yearTo = 1925,

	carriers = { "ROAD" },

	pillarBase = { dir .. "old_pillar_btm_side.mdl" ,  dir .. "old_pillar_btm_rep.mdl" },
	pillarRepeat = { dir .. "old_pillar_mid_side.mdl" ,dir .. "old_pillar_mid_rep.mdl" },
	pillarTop = { dir .. "old_pillar_top_side.mdl",dir .. "old_pillar_top_rep.mdl" },
	--pillarWidth = .75,

	railingBegin = { dir .. "old_railling_start_side.mdl", dir .. "old_railling_start_rep.mdl" },
	railingRepeat = { dir .. "old_railling_rep_side.mdl", dir .. "old_railling_rep_rep.mdl" },
	railingEnd = { dir .. "old_railling_end_side.mdl", dir .. "old_railling_end_rep.mdl" },

	cost = 240.0,
	
	
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
