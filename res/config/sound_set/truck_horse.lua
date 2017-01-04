local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/carriage/drive.wav", refDist = 25.0 }
	},

	updateFn = function (input)
		return {
			tracks = { 
				{
					gain = soundeffectsutil.sampleCurve({ { .0, .0 }, { .5, .8 }, { 1.0, 1.0 } }, input.speed01),
					pitch = soundeffectsutil.sampleCurve({ { .0, .8 }, { .5, 1.0 }, { 1.0, 1.2 } }, input.speed01)
				}
			}
		}
	end
}
end
