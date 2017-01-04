local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/waggon_old/_waggon_old.wav", refDist = 25.0 },
		{ name = "vehicle/train/wheels_ringing2.wav", refDist = 25.0 },
		{ name = "vehicle/train/brakes.wav", refDist = 25.0 }
	},
	events = {
		clacks = {
			names = {
				"vehicle/clack/old/part_1.wav",
				"vehicle/clack/old/part_2.wav",
				"vehicle/clack/old/part_3.wav",
				"vehicle/clack/old/part_4.wav",
				"vehicle/clack/old/part_5.wav",
				"vehicle/clack/old/part_6.wav",
				"vehicle/clack/old/part_7.wav",
				"vehicle/clack/old/part_8.wav",
				"vehicle/clack/old/part_9.wav",
				"vehicle/clack/old/part_10.wav",
			},
			refDist = 15.0
		},
		openDoors = { names = { "vehicle/waggon_old/_waggon_old_closedoor.wav" }, refDist = 5.0 },	
		closeDoors = { names = { "vehicle/waggon_old/_waggon_old_opendoor.wav" }, refDist = 5.0 }
	},

	updateFn = function (input)
		local speed01 = input.speed / input.topSpeed
		local refWeight = 20.0
		local axleRefWeight = 10.0
		
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { .0, .0 },	{ 1.0, 1.0 } }, speed01),
					pitch = soundeffectsutil.sampleCurve({ { .0, 1.0 }, { 1.0, 1.15 } }, speed01)
				},
				soundeffectsutil.squeal(input.speed, input.sideForce, input.maxSideForce),
				soundeffectsutil.brake(input.speed, input.brakeDecel, 0.5)
			},
			events = {
				clacks = soundeffectsutil.clacks(input.speed, input.weight, input.numAxles, axleRefWeight, input.gameSpeedUp),
				openDoors = { gain = 1.0, pitch = 1.0 },
				closeDoors = { gain = 1.0, pitch = 1.0 }
			}
		}
	end
}
end
