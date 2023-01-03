extends Node2D

func _process(delta):
	match Game.PlayerSelect:
		
		0:
			get_node("PlayerSelect").play("Girl")
		1:
			get_node("PlayerSelect").play("Boy")

func _on_Left_pressed():
	if Game.PlayerSelect > 0:
		Game.PlayerSelect -= 1


func _on_Right_pressed():
	if Game.PlayerSelect < 2:
		Game.PlayerSelect += 1


func _on_Select_pressed():
	get_tree().change_scene("res://Game_Level1.tscn")
