local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/aircraft_prop_old/_aircraft_prop_old_idle.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_prop_old/_aircraft_prop_old_power.wav", refDist = 25.0 },
		{ name = "vehicle/aircraft_prop_old/_aircraft_prop_old_distant.wav", refDist = 100.0 },
		-- { name = "vehicle/aircraft_prop_old/_aircraft_prop_old_idle2.wav", refDist = 25.0 }
	},
	events = {
		land = { names = { "vehicle/aircraft_prop_old/_aircraft_prop_old_land.wav" }, refDist = 25.0, hasVelocity = false },
	},
	
	updateFn = function (input)
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.5 }, { 0.5, 1.0 }, { 1.0, 0.15 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.05, 0.8 }, { 1.0, 1.5 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.3, 0.0 }, { 0.6, 0.9 }, { 1.0, 1.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.3, 0.8 }, { 0.6, 0.8 }, { 1.0, 1.1 } }, input.power01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.5, 0.0 }, { 0.9, 0.3 } }, input.power01),	
					pitch = 1.0
				},--[[
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.25 }, { 1.0, 0.40 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { 0.0, 1 }, { 1.0, 2 } }, input.power01)
				}, --]]		
			},
			events = {
				land = { gain = 1.0, pitch = 1.0 },
			}
		}
	end
}
end
