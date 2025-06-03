extends Node

#guardo en variables las instancias de item
@onready var heart_1 := $Item
@onready var heart_2 := $Item2

func update_hearts(lives: int):
	#uso una estructura condicional if para ir cambiando la animacion del item
	#dependiendo si sufre daño o no
	if lives >= 2:
		heart_1.get_node("AnimatedSprite2D").play("idle")
		heart_2.get_node("AnimatedSprite2D").play("idle")
	elif lives == 1:
		heart_1.get_node("AnimatedSprite2D").play("idle")
		heart_2.get_node("AnimatedSprite2D").play("empty")
	elif lives == 0:
		heart_1.get_node("AnimatedSprite2D").play("empty")
		heart_2.get_node("AnimatedSprite2D").play("empty")
