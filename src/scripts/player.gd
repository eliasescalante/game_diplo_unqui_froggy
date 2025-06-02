extends CharacterBody2D

const SPEED = 100.0

@onready var anim := $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var input_vector := Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()

	velocity = input_vector * SPEED
	move_and_slide()

	# Animaciones
	if input_vector != Vector2.ZERO:
		anim.play("jump")
	else:
		anim.play("idle")
