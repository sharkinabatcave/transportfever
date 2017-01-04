function data()
local dir = "bridge/road/iron/"
return {
	name = _("Steel bridge"),

	yearFrom = 1925,
	yearTo = 0,

	carriers = { "ROAD" },

	pillarBase = { dir .. "new_pillar_btm.mdl" },
	pillarRepeat = { dir .. "new_pillar_mid.mdl" },
	pillarTop = { dir .. "new_pillar_top.mdl"},
	--pillarWidth = .75,

	railingBegin = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },
	railingRepeat = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },
	railingEnd = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },

	cost = 360.0,
	
	
		
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
