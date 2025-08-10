extends Control

const GAME = preload("res://Scene/Game/Game.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed('jump') == true:
		get_tree().change_scene_to_packed(GAME)
		
		
func _ready() -> void:
	pass
