class_name Relic
extends Resource


enum Type {START_OF_TURN, START_OF_COMBAT, END_OF_TURN, END_OF_COMBAT, EVENT_BASED}
enum CharacterType {ALL, ASSASSIN, WARRIOR, MAGE}

@export var relic_name : String
@export var id: String
@export var type: Type
@export var character_type: CharacterType
@export var starter_relic: bool = false
@export var icon: Texture
@export var sound_fx: AudioStream = preload("res://art/enemy_hit_02.wav")
@export_multiline var tooltip: String


func initialize_relic(_owner: RelicUI) -> void:
	pass
	

func activate_relic(_owner: RelicUI) -> void:
	pass
	

# este metodo se deberia implementar para relics de base-event
# que conecta al eventBus para asegurarse que son desconectados
# cuando una relic es removida
func deactivate_relic(_owner: RelicUI) -> void:
	pass
	
func get_tooltip() -> String:
	return tooltip

func can_appear_as_reward(character: CharacterStats) -> bool:
	if starter_relic:
		return false
	
	if character_type == CharacterType.ALL:
		return true
	
	var relic_char_name: String = CharacterType.keys()[character_type].to_lower()
	var char_name := character.character_name.to_lower()
	
	return relic_char_name == char_name
	
