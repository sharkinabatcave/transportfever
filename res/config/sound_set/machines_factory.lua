local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "construction/industry/machines_factory.wav", refDist = 25.0 }
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1.0 } }, input.production01),
					pitch = 1.0
				}
			}
		}
	end
}
end
