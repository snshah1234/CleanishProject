extends Sprite

var players = {
	
	0 :  preload("res://Assets/Character/2.png"), 
	1 :  preload("res://Assets/Character/1.png")
	
}

func _ready():
	self.texture = players[Game.PlayerSelect]
