extends CharacterBody2D

class_name myPlane

signal on_plane_died

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const JUMP: float = -350.0

var _gravity: float = ProjectSettings.get('physics/2d/default_gravity')

func _physics_process(delta: float) -> void:
	fly(delta)
	move_and_slide()
	
	if is_on_floor():
		die()
	
	
func die() -> void:	
	set_physics_process(false)
	animated_sprite_2d.stop()
	_on_plane_died()

func fly(delta: float) -> void:
	velocity.y += delta * _gravity
	
	if Input.is_action_just_pressed('jump') == true:
		velocity.y = JUMP
		animation_player.play('jump')

func _on_plane_died() -> void:
	on_plane_died.emit()
