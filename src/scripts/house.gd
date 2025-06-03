extends Node2D

@onready var player = $Player
@onready var anim = $AnimatedSprite2D

func _ready():
	#conecto la señal para detectar al player
	#reproduzco la la animacion idle de la casa (estado vacia)
	$Area2D.body_entered.connect(_on_area_2d_area_entered)
	anim.play("idle")
	
func _on_area_2d_area_entered(body) -> void:
	#uso un if para detectar el player y desactivarlo
	#cambio la animacion a ocupada.
	#finalizo el juego llamando a la funcion win en gamestatemanager
	if body.is_in_group("Player"):
		body.visible = false
		body.set_physics_process(false)
		anim.play("ocuped")
		await get_tree().create_timer(2.0).timeout
		GameStateManager.win()
