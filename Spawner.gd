extends Node2D

export (PackedScene) var spawned_item : PackedScene = null

#func _ready():
	#print("Spawner")
	
const SPAWN_TIME = 2.0
var spawn_time_left : float = SPAWN_TIME

#untuk spawn item keluar
func spawn_item():
	var current_spawned_item = spawned_item.instance()
	add_child(current_spawned_item)
	current_spawned_item.position = Vector2(randf() * get_viewport().size.y, .0)
	
func _process(delta):
	if spawn_time_left < .0:
		spawn_item()
		spawn_time_left = SPAWN_TIME
	else:
		spawn_time_left -= delta
	


