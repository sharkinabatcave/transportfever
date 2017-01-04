function data()
local dir = "bridge/road/wood/"
return {
	name = _("Wooden bridge"),

	yearFrom = 0,
	yearTo = 1925,

	carriers = { "ROAD" },

	pillarBase = { dir .. "old_pillar_btm_side.mdl" ,  dir .. "old_pillar_btm_rep.mdl" },
	pillarRepeat = { dir .. "old_pillar_mid_side.mdl" ,dir .. "old_pillar_mid_rep.mdl" },
	pillarTop = { dir .. "old_pillar_top_side.mdl",dir .. "old_pillar_top_rep.mdl" },
	--pillarWidth = .75,

	railingBegin = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },
	railingRepeat = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },
	railingEnd = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },

	cost = 200.0,
	
	
	materialsToReplace = {
	
		streetPaving = {
			name = "street/transparent.mtl",
		},
		streetBorder = {
			name = "",
		},					
		streetLane = {
			name = "",
		},
		sidewalkPaving = {
			name = "street/transparent.mtl",
		},
		sidewalkLane = {	
			name = "",
		},
		sidewalkBorderInner = {
			name = "",
		},
		streetBorderOuter = {
			name = "",
		},
		sidewalkBorderOuter = {
			name = "",
		},
		sidewalkCurb = {
			name = "street/transparent.mtl",
			size = {8.0,.3}
		},
		sidewalkWall = {
			name = "",
		}	
	},
	
	assets = {		{		},		},
}
end
