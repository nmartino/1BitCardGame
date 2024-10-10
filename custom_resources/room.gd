class_name Room
extends Resource

enum Type {NOT_ASSIGNED, MONSTER, TREASURE, CAMPFIRE, SHOP, BOSS}

@export var type: Type
@export var row: int
@export var column: int
@export var position: Vector2
@export var next_rooms: Array[Room]
@export var selected := false
#solo se usa en las room monster y boss
@export var battle_stats: BattleStats

func _to_string() -> String:
	return "%s (%s)" %[column, Type.keys()[type][0]]
