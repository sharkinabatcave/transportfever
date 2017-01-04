local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/ship_diesel_old/_ship_diesel_old_drive.wav", refDist = 25.0 },
		{ name = "vehicle/ship_steamer/_ship_steamer_idle.wav", refDist = 25.0 },
		{ name = "vehicle/ship_steamer/_ship_steamer_fullpower.wav", refDist = 5.0 },
		{ name = "vehicle/ship_steamer/_ship_steamer_wake.wav", refDist = 5.0 }
	},
	events = {
		horn = { names = { "vehicle/ship_steamer/_ship_steamer_horn.wav" }, refDist = 50.0 },
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 0.025, 0.5 }, { 1.0, 1 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.05, 0.6 }, { 1.0, 1.0 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.4 }, { 0.2, 0.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 1.0 }, { 1.0, 1.0 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.3, 0.0 }, { 1.0, 1.0 } }, input.speed01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.9 }, { 1.0, 1.0 } }, input.speed01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 0.6 } }, input.speed01),
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
