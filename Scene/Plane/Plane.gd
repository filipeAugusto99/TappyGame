extends CharacterBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

const JUMP: float = -350.0

var _gravity: float = ProjectSettings.get('physics/2d/default_gravity')

func _physics_process(delta: float) -> void:
	velocity.y += delta * _gravity
	move_and_slide()
	
	if Input.is_action_just_pressed('jump') == true:
		velocity.y = JUMP
		animation_player.play('jump')
