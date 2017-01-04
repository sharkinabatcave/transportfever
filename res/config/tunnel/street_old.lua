function data()
return {
	name = _("Standard tunnel"),
	carriers = { "ROAD" },
	portals = {
		{ "railroad/tunnel_old.mdl" },
		{ "railroad/tunnel_double_old.mdl" },
		{ "railroad/tunnel_large_start.mdl", "railroad/tunnel_large_rep.mdl", "railroad/tunnel_large_end.mdl" },
	},
	--minTracks = 1,
	--maxTracks = 4,
	cost = 1200.0
}
end
