local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/ship_diesel_modern/_ship_diesel_modern_engines.wav", refDist = 25.0 },
		{ name = "vehicle/ship_diesel_modern/_ship_diesel_modern_wake.wav", refDist = 25.0 }
	},
	events = {
		horn = { names = { "vehicle/ship_diesel_modern/_ship_diesel_modern_horn.wav" }, refDist = 50.0 },
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.8 }, { 1.0, 1.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.05, 0.8 }, { 1.0, 1.1 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 0.5 } }, input.speed01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.8 }, { 1.0, 1.0 } }, input.speed01)
				}
			},
			events = {
				horn = { gain = 1.0, pitch = 1.0 },
			}
		}
	end
}
end
