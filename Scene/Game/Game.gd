extends Node2D

const PIPES = preload("res://Scene/Pipes/Pipes.tscn")

func _ready() -> void:
	spawn_pipes()
  
func _process(delta: float) -> void:
	pass
	
func spawn_pipes() -> void:
	var new_pipe: Pipes = PIPES.instantiate()
	
	var pos_y = randf_range(
		get_viewport_rect().position.y,	
		get_viewport_rect().end.y
	)
	
	new_pipe.position = Vector2(500, pos_y)
	
	add_child(new_pipe)
	
func _on_timer_timeout() -> void:
	spawn_pipes()
