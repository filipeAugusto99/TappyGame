extends Node2D

const PIPES = preload("res://Scene/Pipes/Pipes.tscn")



@onready var pipes_holder: Node = $PipesHolder
@onready var upper_point: Marker2D = $UpperPoint
@onready var lower_point: Marker2D = $LowerPoint
@onready var plane: myPlane = $Plane

func _ready() -> void:
	spawn_pipes()
  

func _process(delta: float) -> void:
	pass

	
func spawn_pipes() -> void:
	var new_pipe: Pipes = PIPES.instantiate()
	
	var pos_y: float = randf_range(
		upper_point.position.y,
		lower_point.position.y
	)
	
	new_pipe.position = Vector2(
		upper_point.position.x, 
		pos_y)
	
	pipes_holder.add_child(new_pipe)

	
func _on_timer_timeout() -> void:
	spawn_pipes()


func _on_plane_died() -> void:
	get_tree().paused = true
