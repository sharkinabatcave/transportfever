function data()
local dir = "bridge/rail/stone/"
return {
	name = _("Concrete bridge"),

	yearFrom = 1925,
	yearTo = 0,

	carriers = { "RAIL" },

	speedLimit = 200.0 / 3.6,

	pillarBase = { dir .. "new_pillar_btm.mdl" },
	pillarRepeat = { dir .. "new_pillar_mid.mdl" },
	pillarTop = { dir .. "new_pillar_top.mdl" },
	--pillarWidth = .75,

	railingBegin = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },
	railingRepeat = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },
	railingEnd = { dir .. "new_railling_side.mdl", dir .. "new_railling_rep.mdl" },

	cost = 432.0,
}
end
