extends Node2D

const FALL_SPEED = 100.0
const COLLISION_DISTANCE = 10.0

var is_collision_detected : bool = false

func _process(delta):
	position.y += FALL_SPEED * delta
	manage_collision()

#not working, my character does not detect the object
func manage_collision():
	var player : Node2D = get_parent().get_parent().get_node("Player")
	if !is_collision_detected && position.distance_to(player.position) < COLLISION_DISTANCE:
		is_collision_detected = true
		queue_free()
		print("m1")


