extends Control

@onready var score_label: Label = $MarginContainer/ScoreLabel


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed('jump') == true:
		GameManager.load_game_scene()
		
		
func _ready() -> void:
	score_label.text = '%04d' % ScoreManager.high_score
	get_tree().paused = false
