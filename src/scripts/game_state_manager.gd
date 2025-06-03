#este script se cargo en el autoload del proyecto
extends Node

func win():
	#si gana cambia a la escena win
	get_tree().change_scene_to_file("res://src/scenes/win.tscn")

func lose():
	# si pierde cambia a la escena lose
	get_tree().change_scene_to_file("res://src/scenes/lose.tscn")
