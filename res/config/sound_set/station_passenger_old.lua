local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "construction/station/passenger_train_station.wav", refDist = 25.0 },
		{ name = "environment/Crowd_large.wav", refDist = 25.0 }
	},
	events  = {
		random32 = {
			names = {
				"environment/passenger_train_station_old_1.wav",
				"environment/passenger_train_station_old_3.wav",
			},
			refDist = 25.0,
			hasVelocity = false
		},
		random16 = {
			names = {
				"environment/passenger_train_station_old_1.wav",
				"environment/passenger_train_station_old_3.wav",
			},
			refDist = 25.0,
			hasVelocity = false
		},
		random8 = {
			names = {
				"environment/passenger_train_station_old_1.wav",
				"environment/passenger_train_station_old_3.wav",
			},
			refDist = 25.0,
			hasVelocity = false
		},
	},

	updateFn = function (input)
		return {
			tracks = {
				{
					gain = 0.5,
					pitch = 0.7
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1.0 } }, input.crowd01),
					pitch = 1.0
				}
			},
			events = {
				random32 = {
					gain = soundeffectsutil.sampleCurve({ { 0.33, 1.0 }, { 0.34, 0.0 } }, input.crowd01),
					pitch = 1.0
				},
				random16 = {
					gain = soundeffectsutil.sampleCurve({ { 0.33, 0.0 }, { 0.34, 1.0 }, { 0.66, 1.0 }, { 0.67, 0.0 } }, input.crowd01),
					pitch = 1.0
				},
				random8 = {
					gain = soundeffectsutil.sampleCurve({ { 0.66, 0.0 }, { 0.67, 1.0 } }, input.crowd01),
					pitch = 1.0
				},
			}
		}
	end
}
end
