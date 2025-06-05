extends CharacterBody2D

# Velocidad del jugador
@export var SPEED := 100.0
# Referencia a la animación
@onready var anim := $AnimatedSprite2D

# Vidas del jugador
var lives := 2
# Posición inicial del jugador
var start_position: Vector2
var new_animation := "idle"


func _ready():
	start_position = position
	anim.play(new_animation)


func _physics_process(delta: float) -> void:
	handle_input()
	move_and_slide()
	update_animation()

# Lee el input del jugador y actualiza la velocidad
func handle_input() -> void:
	var input_vector := Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	
	velocity = input_vector * SPEED

# Actualiza la animación según movimiento y estado
func update_animation() -> void:
	var is_moving := velocity.length() > 0
	var is_damaged := lives < 2
	
	if is_moving && is_damaged:
		new_animation = "jump_damage"
	elif is_moving && not is_damaged:
		new_animation = "jump"
	elif not is_moving && is_damaged:
		new_animation = "idle_damage"
	else:
		new_animation = "idle"

	if anim.animation != new_animation:
		anim.play(new_animation)

# Gestiona el daño del jugador y activa el sonido del golpe
func take_damage() -> void:
	AudioManager.get_node("SFX/golpe").play()
	lives -= 1
	print("Player tocado, vidas restantes:", lives)

	var hud := get_parent().get_node("Ui/Hud")
	hud.update_hearts(lives)

	if lives == 1:
		position = start_position
	elif lives <= 0:
		GameStateManager.lose()
