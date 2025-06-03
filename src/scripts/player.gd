extends CharacterBody2D

# Velocidad del jugador
@export var SPEED = 100.0
# Referencia a la animación
@onready var anim := $AnimatedSprite2D
#vidas  
var lives := 2
#guardo posicion original inicial
var start_position: Vector2


func _ready():
	#guardo la posicion inicial
	start_position = position

func _physics_process(delta: float) -> void:
	# Detecta los comandos del jugador
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
# y cambia la animacion si esta dañado o no
func update_animation() -> void:
	if velocity.length() > 0 && lives == 2:
		anim.play("jump")
	elif velocity.length() < 0 && lives == 2:
		anim.play("idle")
	elif velocity.length() > 0 && lives <=1 :
		anim.play("jump_damage")
	elif velocity.length() < 0 && lives <=1 :
		anim.play("idle_damage")

#genera el daño si choca con el enemigo
#reproduce el sonido de golpe y actualiza la vida
func take_damage() -> void:
	AudioManager.get_node("SFX/golpe").play()
	lives -= 1
	print("Player tocado, vidas restantes:", lives)
	var hud = get_parent().get_node("Ui/Hud")
	hud.update_hearts(lives)

	if lives == 1:
		# reinicia la posición
		position = start_position
	else:
		GameStateManager.lose()
