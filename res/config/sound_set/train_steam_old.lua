local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/train_steam_old/idle.wav", refDist = 25.0 },
		{ name = "vehicle/train_steam_old/fast.wav", refDist = 25.0 },
		{ name = "vehicle/train/wheels_ringing1.wav", refDist = 25.0 },
		{ name = "vehicle/train_steam_old/_brakes.wav", refDist = 25.0 }
	},
	events = {
		horn = { names = { "vehicle/train_steam_old/horn.wav" }, refDist = 50.0 },
		chuffs = {
			names = {
				"vehicle/train_steam_old/chuff_1.wav",
				"vehicle/train_steam_old/chuff_2.wav",
				"vehicle/train_steam_old/chuff_3.wav",
				"vehicle/train_steam_old/chuff_4.wav",
				"vehicle/train_steam_old/chuff_5.wav",
				"vehicle/train_steam_old/chuff_6.wav",
				"vehicle/train_steam_old/chuff_7.wav",
				"vehicle/train_steam_old/chuff_8.wav",
				"vehicle/train_steam_old/chuff_9.wav",
				"vehicle/train_steam_old/chuff_10.wav"
			},
			refDist = 15.0
		}
	},

	updateFn = function (input)
		local chuffsFastFreq = 12.0
		local refWeight = 45.0
		local chuffs = soundeffectsutil.chuffs(input.speed, input.chuffStep, chuffsFastFreq, input.weight, refWeight)
	
		return {
			tracks = {
				chuffs.idleTrack,
				chuffs.fastTrack,
				soundeffectsutil.squeal(input.speed, input.sideForce, input.maxSideForce),
				soundeffectsutil.brake(input.speed, input.brakeDecel, 0.5)
			},
			events = {
				horn = { gain = 1.0, pitch = 1.0 },
				chuffs = chuffs.event
			}
		}
	end
}
end
