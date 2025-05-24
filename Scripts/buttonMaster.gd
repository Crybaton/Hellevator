extends Node2D


func _on_button_1_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator.tscn")


func _on_button_2_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_2.tscn")


func _on_button_3_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_3.tscn")


func _on_button_4_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_4.tscn")
