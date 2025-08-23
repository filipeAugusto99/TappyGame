extends Node2D

class_name Pipes


@onready var laser: Area2D = $Laser


const SPEED: float = 120.00

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	position.x -= delta * SPEED
	
	if position.x < get_viewport_rect().position.x - 100:
		die()
		
func die() -> void:
	set_process(false)
	queue_free()
	

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	die()
	

func _on_laser_body_entered(body: Node2D) -> void:
	if body is myPlane:
		laser.body_entered.disconnect(_on_laser_body_entered)
		SignalHub.emit_on_point_scored()
