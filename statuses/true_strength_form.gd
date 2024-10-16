class_name TrueStrengthFormStatus
extends Status

const STRENGTH_STATUS = preload("res://statuses/strength.tres")

var stacks_per_turn := 2

func apply_status(target: Node) -> void:
	print("my status target %s" % target)
	
	var status_effect := StatusEffect.new()
	var strength := STRENGTH_STATUS.duplicate()
	strength.stacks = stacks_per_turn
	status_effect.sound = sound
	status_effect.status = strength
	status_effect.execute([target])
	
	status_applied.emit(self)
