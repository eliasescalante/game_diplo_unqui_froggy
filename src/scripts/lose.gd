extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$UI/AnimatedSprite2D.play("idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_play_pressed() -> void:
	#conexion del boton para cambiar a main y jugar de vuelta
	get_tree().change_scene_to_file("res://src/scenes/main.tscn")

func _on_quit_pressed() -> void:
	#conexion a quit para cerrar el juego
	get_tree().quit()
