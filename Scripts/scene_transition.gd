extends Node
func change_scene(target: String) -> void:
		$TransitionPlayer.play("dissolve")
		await($TransitionPlayer.animation_finished)
		get_tree().change_scene_to_file(target)
		$TransitionPlayer.play_backwards("dissolve")
		
