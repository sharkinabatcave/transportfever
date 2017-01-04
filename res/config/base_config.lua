local tu = require "texutil"
local ffu = require "filefilterutil"

game = {
	config = { }
}

game.config.costs = {
	-- per m^3
	terrainRaise = 6.0,
	terrainLower = 7.0,

	-- fraction of road/track cost
	railroadCatenary = .3,
	roadBusLane = .1,
	roadTramLane = .2,
	roadElectricTramLane = .4,

	-- fraction of build cost (for roads, tracks and constructions)
	bulldozeCost = .125,

	-- overall bulldozer cost scaling factor
	bulldozer = 1.0,
	
	removeField = 200000.0
}

game.config.cargotypes = {
	{ id = "PASSENGERS", name = _("Passengers") },
	{ id = "LOGS", name = _("Logs") },
	{ id = "LIVESTOCK", name = _("Livestock") },
	{ id = "COAL", name = _("Coal") },	
	{ id = "IRON_ORE", name = _("Iron ore") },
	{ id = "STONE", name = _("Stone") },
	{ id = "GRAIN", name = _("Grain") },
	{ id = "CRUDE", name = _("Crude oil") },
	{ id = "STEEL", name = _("Steel") },
	{ id = "PLANKS", name = _("Planks") },
	{ id = "PLASTIC", name = _("Plastic") },
	{ id = "SLAG", name = _("Slag") },
	{ id = "OIL", name = _("Oil") },
	{ id = "CONSTRUCTION_MATERIALS", name = _("Construction material") },
	{ id = "MACHINES", name = _("Machines") },
	{ id = "FUEL", name = _("Fuel") },
	{ id = "TOOLS", name = _("Tools") },
	{ id = "FOOD", name = _("Food") },
	{ id = "GOODS", name = _("Goods") },
}

local defaultNormalMap = "default_normal_map.tga"

game.config.terrain = {
	generator = {
		ridgeTex = tu.makeTextureMipmapClamp("terrain/ridge.tga", false)
	},

	groundTextures = {
		waterGround = "water_ground",
		waterShore = "water_shore",
		--forestFloor = "forest_floor",
		farmland = "farmland",
		farmlandBorder = "farmland_border"
	},

	shader = {
		noiseTex = tu.makeTextureMipmapRepeat("terrain/noise.tga", false),
		levelColorTex = tu.makeTextureLinearClamp("terrain/level_colors.tga", false),
		detailColorArrayTex = tu.makeTextureMipmapRepeat("terrain/detail_color.tga", true, true, false, "TWOD_ARRAY"),
		detailNrmlArrayTex = tu.makeTextureMipmapRepeat("terrain/detail_nrml.tga", true, true, true, "TWOD_ARRAY"),
	},

	skirt = {
		colorTex = tu.makeTextureMipmapClampVertical("terrain/skirt_color.tga", false),
		detailTex = tu.makeTextureMipmapRepeat("terrain/skirt_detail.tga", true),
		waterTex = tu.makeTextureMipmapClamp("terrain/water_skirt.tga", false)
	},

	vegetation = {
		forestLevel = 0.5,			-- 0.0 - 1.0
		forestDensity = 1.0,		-- 0.25 - 4.0
		singleDensity = 1.0,		-- 0.0 - 100.0
		treeLine = 470.0
	}
}

game.config.environment = {
	light = {
		direction =  { math.cos(math.rad(60.0)), math.sin(math.rad(60.0)), math.tan(math.rad(50.0)) },
		pmremShadow = "env/shadow.hdr",
		pmremSun = "env/sun.hdr",
		refBrightness = 2.0
	},

	fog = {
		color = { 0.55, 0.95, 1.05 }
	},

	skyBox = {
		textures = {
			"skybox/0.hdr",
			"skybox/90.hdr",
			"skybox/180.hdr",
			"skybox/270.hdr",
			"skybox/top.hdr",
			"skybox/bottom.hdr"
		}
	},

	envMap = {
		texture = "c.tga"
	}
}

game.config.nameList = {
	folder = ""
}

game.config.industryButton = false;

game.config.terrainToolMinRadius = 4
game.config.terrainToolMaxRadius = 48
game.config.terrainToolMinStrength = 10
game.config.terrainToolMaxStrength = 20

game.config.enforceMainConnections = true
game.config.townGrowthFactor = 1.0					-- .0 - 2.0 (factor to control town growth behaviour)
game.config.townGrowthExponent = .89				-- .5 - 1.0 (exponent to attenuate late game town growth)
game.config.maxTownSize = 0							-- 0 (unlimited) or a number >= 500 (limits all land use counts)

game.config.townMajorStreetAngleRange = 10.0		-- angle within town major street directions are randomized (in degrees)

game.config.tramCatenaryYearFrom = 1875
game.config.trackCatenaryYearFrom = 1910
game.config.busLaneYearFrom = 1925

game.config.millisPerDay = 2000						-- default 2000 (milliseconds per day), 1000 - 8000 experimental

game.config.audio = {
	environment = {
		lake = { name = "environment/Lake3.wav", refDist = 5.0 },
		birds = { name = "environment/birds3.wav", refDist = 1.0 },
		forest = { name = "environment/woods.wav", refDist = 5.0 },
		meadow = { name = "environment/Meadow2.wav", refDist = 5.0 },
		mountain = { name = "environment/Mountains3.wav", refDist = 5.0 },
		commercial1850 = { name = "environment/Commercial_1850.wav", refDist = 5.0 },
		commercial1920 = { name = "environment/Commercial_1920.wav", refDist = 5.0 },
		commercial1990 = { name = "environment/Commercial_1990.wav", refDist = 5.0 },
		industrial1850 = { name = "environment/Industrial_1850.wav", refDist = 5.0 },
		industrial1920 = { name = "environment/Industrial_1920.wav", refDist = 5.0 },
		industrial1990 = { name = "environment/Industrial_1990.wav", refDist = 5.0 },
		residential1850 = { name = "environment/Residential_1850.wav", refDist = 5.0 },
		residential1920 = { name = "environment/Residential_1920.wav", refDist = 5.0 },
		residential1990 = { name = "environment/Residential_1990.wav", refDist = 5.0 },
		crowd = { name = "environment/Crowd_large.wav", refDist = 5.0 },
		traffic1920 = { name = "environment/traffic_1920.wav", refDist = 100.0 },
		traffic1990 = { name = "environment/traffic_1990.wav", refDist = 100.0 },
		atmosphere = { name = "environment/Wind.wav", refDist = 3500.0 }
	},
	music = {
		["01 - Green.ogg"] = { yearFrom = 1850, yearTo = 1900 },
		["02 - Fifth.ogg"] = { yearFrom = 1850, yearTo = 1906 },
		["03 - Planet.ogg"] = { yearFrom = 1850, yearTo = 1912 },
		["04 - Blues.ogg"] = { yearFrom = 1850, yearTo = 1918 },
		["05 - Burnette.ogg"] = { yearFrom = 1850, yearTo = 1925 },
		["06 - Left Side.ogg"] = { yearFrom = 1850, yearTo = 1931 },
		["07 - Alley.ogg"] = { yearFrom = 1850, yearTo = 1937 },
		["08 - Faster.ogg"] = { yearFrom = 1850, yearTo = 1943 },
		["09 - Fleet.ogg"] = { yearFrom = 1850, yearTo = 1950 },
		["10 - Chet.ogg"] = { yearFrom = 1850, yearTo = 1956 },
		["11 - Kingston.ogg"] = { yearFrom = 1850, yearTo = 1962 },
		["12 - Thirteen.ogg"] = { yearFrom = 1850, yearTo = 1968 },
		["13 - Heaven.ogg"] = { yearFrom = 1850, yearTo = 1975 },
		["14 - Juno.ogg"] = { yearFrom = 1850, yearTo = 1981 },
		["15 - Alone.ogg"] = { yearFrom = 1850, yearTo = 1987 },
		["16 - Bootsy.ogg"] = { yearFrom = 1900, yearTo = 1993 },
		["17 - Ray.ogg"] = { yearFrom = 1906, yearTo = 2000 },
		["18 - Soul.ogg"] = { yearFrom = 1912, yearTo = 0 },
		["19 - Numbers.ogg"] = { yearFrom = 1918, yearTo = 0 },
		["20 - Masters.ogg"] = { yearFrom = 1925, yearTo = 0 },
		["21 - Mikro.ogg"] = { yearFrom = 1931, yearTo = 0 },
		["22 - Fever.ogg"] = { yearFrom = 1937, yearTo = 0 },
		["23 - Movie.ogg"] = { yearFrom = 1943, yearTo = 0 },
		["24 - Nowhere.ogg"] = { yearFrom = 1950, yearTo = 0 },
		["25 - Roach.ogg"] = { yearFrom = 1956, yearTo = 0 },
		["26 - Quest.ogg"] = { yearFrom = 1962, yearTo = 0 },
		["27 - Devo.ogg"] = { yearFrom = 1968, yearTo = 0 },
		["28 - Sad.ogg"] = { yearFrom = 1975, yearTo = 0 },
		["29 - Leave.ogg"] = { yearFrom = 1981, yearTo = 0 },
		["30 - Long.ogg"] = { yearFrom = 1987, yearTo = 0 },
		["31 - Dense.ogg"] = { yearFrom = 1993, yearTo = 0 },
		["32 - Brody.ogg"] = { yearFrom = 2000, yearTo = 0 }
	}
}

game.config.world = {
	areaPerTown = 10.0,			-- km^2
	areaPerIndustry = 2.0,		-- km^2
	townSizeFactor = 1.0,		-- 0.5 - 2.0
	makeInitialStreets = true,	-- default true, false experimental
}


addFileFilter("model/vehicle", ffu.model.vehicle)
addFileFilter("model/tree", ffu.model.tree)
addFileFilter("model/industry", ffu.model.industry)
addFileFilter("model/other", ffu.model.other)
