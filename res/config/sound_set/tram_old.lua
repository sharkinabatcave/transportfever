local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/tram_old/drive.wav", refDist = 25.0 }
	},
	events = {
		openDoors = { names = { "vehicle/tram_old/bell.wav" }, refDist = 5.0 },
		closeDoors = { names = { "vehicle/truck_modern/close_doors.wav" }, refDist = 5.0 },
	},

	updateFn = function (input)
		return {
			tracks = { 
				{
					gain = soundeffectsutil.sampleCurve({ { .0, .0 }, { .1, .32 }, { .3, .55 }, { .6, .77 }, { 1.0, 1.0 } }, input.speed01),
					pitch = 1.0
				}
			},
			events = {
				openDoors = { gain = 1.0, pitch = 1.0 },
				closeDoors = { gain = 1.0, pitch = 1.0 }
			}
		}
	end
}
end
