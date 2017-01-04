local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/ship_hovercraft/_ship_hovercraft_idle.wav", refDist = 25.0 },
		{ name = "vehicle/ship_hovercraft/_ship_hovercraft_power.wav", refDist = 25.0 }
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 1.0 }, { 1.0, 0.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.8 }, { 1.0, 1.1 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.8 }, { 1.0, 1.0 } }, input.power01)
				}
			}
		}
	end
}
end
