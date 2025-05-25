extends Node
func change_scene_Intro(target: String) -> void:
		SoundManager._closing()
		$TransitionPlayer.play("dissolveIntro")
		await($TransitionPlayer.animation_finished)
		Global.Save = true 
		get_tree().change_scene_to_file(target)
		Global.Screenshake = true
		$TransitionPlayer.play_backwards("dissolve")
