extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("idle")
	$AnimatedSprite2D2.play("idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_play_pressed() -> void:
	#para jugar de vuelta
	get_tree().change_scene_to_file("res://src/scenes/main.tscn")

func _on_quit_pressed() -> void:
	#para cerrar el juego
	get_tree().quit()
