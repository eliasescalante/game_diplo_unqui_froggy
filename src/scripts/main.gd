extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Reproduzco la animacion para pasar de pantalla negra a transparente
	$AnimationPlayer.play("init")
	$UI/AnimatedSprite2D.play("idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://src/scenes/level.tscn")
