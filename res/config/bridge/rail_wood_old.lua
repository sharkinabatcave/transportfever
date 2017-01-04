function data()
local dir = "bridge/rail/wood/"
return {
	name = _("Wooden bridge"),

	yearFrom = 0,
	yearTo = 1925,

	carriers = { "RAIL" },

	speedLimit = 60.0 / 3.6,

	pillarBase = { dir .. "old_pillar_btm_side.mdl", dir .. "old_pillar_btm_rep.mdl"},
	pillarRepeat = { dir .. "old_pillar_mid_side.mdl", dir .. "old_pillar_mid_rep.mdl"},
	pillarTop = { dir .. "old_pillar_top_side.mdl", dir .. "old_pillar_top_rep.mdl"},
	--pillarWidth = .75,

	railingBegin = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },
	railingRepeat = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },
	railingEnd = { dir .. "old_railling_side.mdl", dir .. "old_railling_rep.mdl" },

	cost = 300.0,
	

}
end
