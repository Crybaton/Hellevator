extends Node2D


func _on_button_1_pressed():
	SceneTransition.change_scene("res://Scenes/elevator.tscn")


func _on_button_2_pressed():
	SceneTransition.change_scene("res://Scenes/elevator_scene_2.tscn")
