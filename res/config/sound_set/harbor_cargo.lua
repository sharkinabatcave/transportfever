local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "construction/station/Shipyard.wav", refDist = 25.0 },
		{ name = "environment/Industrial_1920.wav", refDist = 25.0 }
	},
	events  = {
		random32 = {
			names = {
				"selected_industry_goods_factory1.wav",
				"selected_industry_steel_mill1.wav",
			},
			refDist = 25.0,
			hasVelocity = false
		},
		random16 = {
			names = {
				"selected_industry_goods_factory1.wav",
				"selected_industry_steel_mill1.wav",
			},
			refDist = 25.0,
			hasVelocity = false
		},
		random8 = {
			names = {
				"selected_industry_goods_factory1.wav",
				"selected_industry_steel_mill1.wav",
			},
			refDist = 25.0,
			hasVelocity = false
		},
	},

	updateFn = function (input)
		return {
			tracks = {
				{
					gain = 1.0,
					pitch = 1.0
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { 0.0, 0.1 }, { 1.0, 1.0 } }, input.cargo01),
					pitch = 1.0
				}
			},
			events = {
				random32 = {
					gain = soundeffectsutil.sampleCurve({ { 0.33, 1.0 }, { 0.34, 0.0 } }, input.cargo01),
					pitch = 1.0
				},
				random16 = {
					gain = soundeffectsutil.sampleCurve({ { 0.33, 0.0 }, { 0.34, 1.0 }, { 0.66, 1.0 }, { 0.67, 0.0 } }, input.cargo01),
					pitch = 1.0
				},
				random8 = {
					gain = soundeffectsutil.sampleCurve({ { 0.66, 0.0 }, { 0.67, 1.0 } }, input.cargo01),
					pitch = 1.0
				},
			}
		}
	end
}
end
