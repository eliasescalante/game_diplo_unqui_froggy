extends Node2D

@onready var hearts := $Item.get_children()

func update_hearts(lives: int):
	for i in range(hearts.size()):
		if i < lives:
			hearts[i].get_node("AnimatedSprite2D").play("full")
		else:
			hearts[i].get_node("AnimatedSprite2D").play("empty")
