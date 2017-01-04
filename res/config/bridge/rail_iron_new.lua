function data()
local dir = "bridge/rail/iron/"
return {
	name = _("Steel bridge"),

	yearFrom = 1925,
	yearTo = 0,

	carriers = { "RAIL" },

	--speedLimit = 300.0 / 3.6,

	pillarBase = { dir .. "new_pillar_btm.mdl" },
	pillarRepeat = { dir .. "new_pillar_mid.mdl" },
	pillarTop = { dir .. "new_pillar_top.mdl" },
	--pillarWidth = .75,

	railingBegin = { dir .. "new_railling_start_side.mdl", dir .. "new_railling_start_rep.mdl" },
	railingRepeat = { dir .. "new_railling_rep_side.mdl", dir .. "new_railling_rep_rep.mdl" },
	railingEnd = { dir .. "new_railling_end_side.mdl", dir .. "new_railling_end_rep.mdl" },

	cost = 540.0,
}
end
