extends Area2D

@onready var laser_animation: AnimationPlayer = $LaserAnimation

func _ready() -> void:
	laser_animation.play('flash')
