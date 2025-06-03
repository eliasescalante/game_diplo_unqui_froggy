extends CharacterBody2D

@export var SPEED = 100.0  # Velocidad del jugador
@onready var anim := $AnimatedSprite2D  # Referencia a la animación

func _physics_process(delta: float) -> void:
	# Detecta entrada del jugador
	handle_input()
	# Mueve al jugador con colisiones      
	move_character()  
	# Cambia la animación según movimiento   
	update_animation()   

# Lee el input del jugador y actualiza la velocidad
func handle_input() -> void:
	var input_vector := Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	velocity = input_vector * SPEED

# Aplica el movimiento al jugador
func move_character() -> void:
	move_and_slide()

# Reproduce animación según si se está moviendo
func update_animation() -> void:
	if velocity.length() > 0:
		anim.play("jump")
	else:
		anim.play("idle")

var lives := 2  # Dos vidas = dos corazones

func take_damage():
	lives -= 1
	get_parent().get_node("Ui/Hud").update_hearts(lives)
	if lives <= 0:
		get_tree().change_scene_to_file("res://src/scenes/lose.tscn")
