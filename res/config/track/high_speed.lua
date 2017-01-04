function data()
	local t = { }

	t.name = _("High-speed tracks")
	t.desc = _("Specialized tracks for higher speeds")

	t.yearFrom = 1925
	t.yearTo = 0

	t.shapeWidth = 4.0
	t.shapeStep = 4.0
	t.shapeSleeperStep = 8.0 / 13.0

	t.ballastHeight = .3
	t.ballastCutOff = .1

	t.sleeperBase = t.ballastHeight
	t.sleeperLength = .24
	t.sleeperWidth = 2.6
	t.sleeperHeight = .08
	t.sleeperCutOff = .04

	t.railTrackWidth = 1.435
	t.railBase = t.sleeperBase + t.sleeperHeight
	t.railHeight = .15
	t.railWidth = .07
	t.railCutOff = .02

	t.catenaryBase = 5.917 + t.railBase + t.railHeight
	t.catenaryHeight = 1.35

	t.trackDistance = 5.0

	t.speedLimit = 300.0 / 3.6
	t.speedCoeffs = { .9, 15.0, .63 }

	t.ballastMaterial = "track/ballast.mtl"
	t.sleeperMaterial = "track/sleeper_concrete.mtl"
	t.railMaterial = "track/rail.mtl"
	t.catenaryMaterial = "track/catenary.mtl"
	t.trackMaterial = "track/track_high_speed.mtl"
	t.tunnelWallMaterial = "track/tunnel_ug.mtl"
	t.tunnelHullMaterial = "track/tunnel_hull.mtl"

	t.catenaryPoleModel = "railroad/power_pole_2.mdl"
	t.catenaryMultiPoleModel = "railroad/power_pole_1.mdl"
	t.catenaryMultiGirderModel = "railroad/power_pole_1a.mdl"
	t.catenaryMultiInnerPoleModel = "railroad/power_pole_1b.mdl"

	t.bumperModel = "railroad/bumper.mdl"
	t.switchSignalModel = "railroad/switch_box.mdl"

	t.fillGroundTex = "ballast_fill_stone"
	t.borderGroundTex = "ballast"

	t.cost = 80.0

	return t
end
