extends PointLight2D

var follow_speed := 8.0
var initialized := false

func _physics_process(delta):
	var target = get_global_mouse_position()
	var local_target = get_parent().to_local(target)
	
	if not initialized:
		position = local_target
		initialized = true
	else:
		position = position.lerp(local_target, delta * follow_speed)
