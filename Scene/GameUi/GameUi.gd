extends Control

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed('Exit') == true:
		GameManager.load_main_scene()


func _ready() -> void:
	pass # Replace with function body.
