local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/bus_old/bus_old_idle.wav", refDist = 25.0 },
		{ name = "vehicle/bus_old/bus_old_drive.wav", refDist = 25.0 }
	},
	events = {
		horn = { names = { "vehicle/bus_old/bus_old_horn.wav" }, refDist = 25.0 },
		openDoors = { names = { "vehicle/bus_old/bus_old_open_door.wav" }, refDist = 5.0 },
		closeDoors = { names = { "vehicle/bus_old/bus_old_close_door.wav" }, refDist = 5.0 }
	},

	updateFn = function (input)
		return {
			tracks = soundeffectsutil.makeRoadVehicle2({ .05, .1, .3 }, .075, .6, .4, input.speed01),
			events = {
				horn = { gain = 1.0, pitch = 1.0 },
				openDoors = { gain = 1.0, pitch = 1.0 },
				closeDoors = { gain = 1.0, pitch = 1.0 }
			}
		}
	end
}
end
