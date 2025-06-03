extends Node2D

func _ready() -> void:
	#Reproduzco las animaciones para pasar de pantalla negra a transparente
	# y para reproducir la animacion de la ranita
	$AnimationPlayer.play("init")
	$UI/AnimatedSprite2D.play("idle")

func _on_play_pressed() -> void:
	#conexion del boton play para que cambie a la escena del nivel
	get_tree().change_scene_to_file("res://src/scenes/level.tscn")
