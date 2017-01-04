local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/aircraft_jet_modern/_modernjet_idle.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_jet_modern/_modernjet_flying.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_jet_modern/_no-license_A320_CFM56_Turbo_out.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_jet_old/_oldjet_distant.wav", refDist = 200.0, hasVelocity = false }
	},
	events = {
		land = { names = { "vehicle/aircraft_jet_modern/_modernjet_land.wav" }, refDist = 25.0, hasVelocity = false },
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { .0, .5 }, { 0.5, 1.0 }, { 1.0, 0.15 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { .0, 0.8 }, { 1.0, 1.5 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.4, .0 }, { 1.0, 1.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.4, 0.8 }, { 1.0, 1.3} }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.4, .0 }, { 1.0, 1.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.4, 0.9 }, { 1.0, 1.0} }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.5, 0.0 }, { 0.9, 0.7 } }, input.power01),	-- rumble distant
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
