local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/ship_diesel_old/_ship_diesel_old_idle.wav", refDist = 25.0 },
		{ name = "vehicle/ship_diesel_old/_ship_diesel_old_drive.wav", refDist = 25.0 },
		{ name = "vehicle/ship_diesel_old/_ship_diesel_old_distant.wav", refDist = 500.0 }
	},
	events = {
		horn = { names = { "vehicle/ship_diesel_old/_ship_diesel_old_horn.wav" }, refDist = 50.0 },
	},
	
	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 1 }, { 1.0, 0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.9 }, { 1.0, 1 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1 } }, input.speed01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.9 }, { 1.0, 1.0 } }, input.speed01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.5, 0 }, { 1.0, 1 } }, input.speed01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 1 }, { 1.0, 1.0 } }, input.speed01)
				}
			},
			events = {
				horn = { gain = 1.0, pitch = 1.0 },
			}
		}
	end
}
end
