function data()
local dir = "bridge/road/stone/"
return {
	name = _("Concrete bridge"),

	yearFrom = 1925,
	yearTo = 0,

	carriers = { "ROAD" },

	pillarBase = { dir .. "new_pillar_btm_side.mdl" ,  dir .. "new_pillar_btm_rep.mdl" },
	pillarRepeat = { dir .. "new_pillar_mid_side.mdl" ,dir .. "new_pillar_mid_rep.mdl" },
	pillarTop = { dir .. "new_pillar_top_side.mdl",dir .. "new_pillar_top_rep.mdl" },
	--pillarWidth = .75,

	railingBegin = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },
	railingRepeat = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },
	railingEnd = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },

	cost = 288.0,
	
	
	materialsToReplace = {
		streetPaving = {
			name = "street/new_medium_paving_zero_offset.mtl",
		},	
		sidewalkPaving = {
			name = "street/new_medium_sidewalk_zero_offset.mtl",
		},
		sidewalkBorderInner = {
			name = "street/new_medium_sidewalk_border_inner.mtl",		
			size = { 3, 0.6 }
		},
	}
}
end
