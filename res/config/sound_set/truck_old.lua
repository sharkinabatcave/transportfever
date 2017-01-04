local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/truck_old/truck_old_idle.wav", refDist = 25.0 },
		{ name = "vehicle/truck_old/truck_old_drive.wav", refDist = 25.0 }
	},
	events =  {
		horn = { names = { "vehicle/truck_old/truck_old_horn.wav" }, refDist = 25.0 },
		openDoors = { names = { "vehicle/truck_old/truck_old_dooropen.wav" }, refDist = 5.0 },
		closeDoors = { names = { "vehicle/truck_old/truck_old_doorclose.wav" }, refDist = 5.0 },
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
