extends Node
func _process(delta):
	_death()

func change_scene(target: String) -> void:
		SoundManager._closing()
		$TransitionPlayer.play("dissolve")
		await($TransitionPlayer.animation_finished)
		Global.Save = true 
		get_tree().change_scene_to_file(target)
		Global.Screenshake = true
		$TransitionPlayer.play_backwards("dissolve")
		
func _death():
	if Global.ElevatorDamage == 1:
		$dissolve_rect/EleDacay1.show()
	if Global.ElevatorDamage == 2:
		$dissolve_rect/EleDacay2.show()
	if Global.ElevatorDamage == 3:
		$dissolve_rect/EleDacay3.show()
	if Global.ElevatorDamage == 4:
		$dissolve_rect/EleDacay4.show()
