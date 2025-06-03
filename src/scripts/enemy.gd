extends Node2D

#velocidad
@export var speed := 100.0
# 1 para subir -1 para bajar
@export var direction := 1  
# distancia que recorre el fantasmita
@export var loop_height := 600.0  
# guardo la posicion original
var start_position: Vector2

func _ready():
	# guardo la posicion inicial y reproduzco la animacion del enemigo
	# inicio la conexion de la señal al area2d
	start_position = position
	$AnimatedSprite2D.play("idle")
	$Area2D.body_entered.connect(_on_area_2d_area_entered)

func _process(delta):
	#para mover el enemigo en forma vertical
	position.y += speed * direction * delta
	# Si se va fuera del área vertical, vuelve al inicio
	if abs(position.y - start_position.y) > loop_height:
		position.y = start_position.y

func _on_area_2d_area_entered(body) -> void:
	# detecta cuando entra el player
	if body.is_in_group("Player"):
		body.take_damage()
