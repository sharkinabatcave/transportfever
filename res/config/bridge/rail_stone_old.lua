function data()
local dir = "bridge/rail/stone/"
return {
	name = _("Stone bridge"),

	yearFrom = 0,
	yearTo = 1925,

	carriers = { "RAIL" },

	speedLimit = 90.0 / 3.6,

	pillarBase = { dir .. "old_pillar_btm_side.mdl", dir .. "old_pillar_btm_rep.mdl" },
	pillarRepeat = { dir .. "old_pillar_mid_side.mdl", dir .. "old_pillar_mid_rep.mdl" },
	pillarTop = { dir .. "old_pillar_top_side.mdl", dir .. "old_pillar_top_rep.mdl" },
	--pillarWidth = .75,

	railingBegin = { dir .. "old_railling_start_side.mdl", dir .. "old_railling_start_rep.mdl" },
	railingRepeat = { dir .. "old_railling_rep_side.mdl", dir .. "old_railling_rep_rep.mdl" },
	railingEnd = { dir .. "old_railling_end_side.mdl", dir .. "old_railling_end_rep.mdl" },

	cost = 360.0,
	

}
end
