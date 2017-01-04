local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/aircraft_prop_modern/_aircraft_prop_mod_idle.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_prop_modern/_aircraft_prop_mod_power1.wav", refDist = 25.0 }
	},
	events = {
		land = { names = { "vehicle/aircraft_prop_modern/_aircraft_prop_mod_land.wav" }, refDist = 25.0, hasVelocity = false },
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0, 1 }, { 1, 0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0, 1 }, { 1.0, 1.4 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0, 0.3 }, { 1.0, 1.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0, 0.9 }, { 1.0, 1.3} }, input.power01)
				}
			},
			events = {
				land = { gain = 1.0, pitch = 1.0 },
			}
		}
	end
}
end
