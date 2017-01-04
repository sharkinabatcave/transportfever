local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/concorde/_concorde_idle.wav", refDist = 25.0 },
		{ name = "vehicle/concorde/_concorde_idle_power2.wav", refDist = 25.0 },
		{ name = "vehicle/concorde/_no-license_xolympus593_spool_distant.wav", refDist = 25.0 },
		{ name = "vehicle/concorde/_concorde_boost.wav", refDist = 25.0 },
		{ name = "vehicle/concorde/_concorde_distant.wav", refDist = 1000.0, hasVelocity = false },
	
	},
	events = {
		sonicBoom = { names = { "vehicle/concorde/sonic_boom.wav" }, refDist = 750.0, hasVelocity = false },
		land = { names = { "vehicle/concorde/_concorde_land.wav" }, refDist = 25.0, hasVelocity = false },
	},

	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.05, 1.0 }, { 0.3, 0.0 } }, input.power01),	-- idle distant
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 1.0 }, { 0.3, 1.5 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.05, 0.5 }, { 0.7, 0.0 } }, input.power01),	-- howl
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 1.0 }, { 0.7, 1.5 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 0.05, 1.0 }, { 0.9, 0.3 } }, input.power01),	-- spool distant
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 0.8 }, { 0.9, 1.5 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0, 0.0 }, { 1.0, 1.0 } }, input.power01),	-- fullblast distant
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 1 }, { 1, 1.2 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.5, 0.0 }, { 0.9, 1.0 } }, input.power01),	-- engine rumble distant
					pitch = 1.0
				}
			},
			events = {
				sonicBoom = { gain = 1.0, pitch = 1.0 },
				land = { gain = 1.0, pitch = 1.0 },
			}
		}
	end
}
end
