extends Control

var MAIN = load("res://Scene/Main/Main.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed('Exit') == true:
		get_tree().change_scene_to_packed(MAIN)


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass
