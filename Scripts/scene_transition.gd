extends Node
func change_scene(target: String) -> void:
		SoundManager._closing()
		$TransitionPlayer.play("dissolve")
		await($TransitionPlayer.animation_finished)
		Global.Save = true 
		get_tree().change_scene_to_file(target)
		Global.Screenshake = true
		$TransitionPlayer.play_backwards("dissolve")
		
