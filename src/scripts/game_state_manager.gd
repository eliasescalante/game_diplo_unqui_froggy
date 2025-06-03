extends Node

func win():
	get_tree().change_scene_to_file("res://src/scenes/win.tscn")

func lose():
	get_tree().change_scene_to_file("res://src/scenes/lose.tscn")
