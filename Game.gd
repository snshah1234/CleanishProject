extends Node2D


export var mainGameScene : PackedScene

func _on_Play_Button_button_up():
	get_tree().change_scene("res://CharacterSelection.tscn") 


func _on_Quit_pressed():
	get_tree().quit()


func _on_Options_pressed():
	get_tree().change_scene("res://OptionScence.tscn")


func _on_Game_tutorial_pressed():
	get_tree().change_scene("res://HowToGame.tscn")
	

