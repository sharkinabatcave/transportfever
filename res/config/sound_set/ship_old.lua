local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/truck_modern/idle.wav", refDist = 25.0 },
		{ name = "vehicle/truck_modern/drive.wav", refDist = 25.0 }
	},

	updateFn = function (input)
		return {
			tracks = soundeffectsutil.makeRoadVehicle2({ .05, .1, .3 }, .075, .6, .4, input.power01)
		}
	end
}
end
