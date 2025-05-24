extends Node2D

func _physics_process(delta):
	global_position = get_global_mouse_position()

# Kleiner Lag? Maus bewegt sich, Licht kommt versetzt nach?
