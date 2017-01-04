local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/aircraft_jet_old/_no-license_xJT8D15_front.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_jet_old/_no-license_xJT8D15_front_2.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_jet_old/_no-license_xJT8D_Blast.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_jet_old/_oldjet_fan.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_jet_old/_oldjet_distant.wav", refDist = 400.0, hasVelocity = false }
	},
	events = {
		land = { names = { "vehicle/aircraft_jet_old/_oldjet_land.wav" }, refDist = 25.0, hasVelocity = false },
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { .0, .5 }, { 0.5, 0.8 }, { 1.0, 0.2} }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { .0, 0.9 }, { 1.0, 1.6 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { .0, .5 }, { 0.5, 0.8 }, { 1.0, 0.2} }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { .0, 0.95 }, { 1.0, 1.55 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.5, 0.0 }, { 1.0, 1.0 } }, input.power01),	-- blast
					pitch = 1.0
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1.0 } }, input.power01),	-- fan
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.8 }, { 1.0, 1.1 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.5, 0.0 }, { 1.0, 0.7 } }, input.power01),	-- rumble distant
					pitch = 1.0
				}
			},
			events = {
				land = { gain = 1.0, pitch = 1.0 },
			}
		}
	end
}
end
