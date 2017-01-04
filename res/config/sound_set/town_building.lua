local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "environment/Construction_Site3.wav", refDist = 5.0 },
	},

	updateFn = function (input)
		return {
			tracks = {
				{
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1.0 } }, input.underConstruction),
					pitch = 1.0
				},
			},
		}
	end
}
end
