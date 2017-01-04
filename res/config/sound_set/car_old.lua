local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/car_old/car_old_idle.wav", refDist = 5.0 },
		{ name = "vehicle/car_old/car_old_drive.wav", refDist = 5.0 }
	},
	events =  {
		horn = { names = { "vehicle/car_old/car_old_horn.wav" }, refDist = 5.0 },
	},

	updateFn = function (input)
		return {
			tracks = soundeffectsutil.makeRoadVehicle2({ .05, .1, .3 }, .075, .6, .4, input.speed01),
			events = {
				horn = { gain = 1.0, pitch = 1.0 },
			}
		}
	end
}
end
