local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/tram_modern/idle.wav", refDist = 25.0 },
		{ name = "vehicle/tram_modern/drive.wav", refDist = 25.0 }
	},

	updateFn = function (input)
		return {
			tracks = { 
				{
					gain = soundeffectsutil.sampleCurve({ { .0, 1.0 }, { .15, .0 } }, input.speed01),
					pitch = 1.0
				},
				{
					gain = soundeffectsutil.sampleCurve({ { .0, .0 }, { .15, 1.0 } }, input.speed01),
					pitch = soundeffectsutil.sampleCurve({ { .0, .94 }, { .15, 1.0 }, { .28, 1.06 }, { .53, 1.12 }, { 1.0, 1.19 } }, input.speed01)
				}
			}
		}
	end
}
end
