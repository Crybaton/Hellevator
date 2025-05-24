extends Node2D


func _on_button_close_pressed():
	if Global.PanicDoorsClosed == false:
		Global.PanicDoorsClosing = true
		Global.PanicDoorsClosed = true
	
#func _on_button_open_pressed():
	#if Global.PanicDoorsClosed == true:
		#Global.PanicDoorsClosing = false
		#Global.PanicDoorsClosed = false
	
	
func _on_button_1_pressed():
	SceneTransition.change_scene("res://Scenes/elevator.tscn")


func _on_button_2_pressed():
	SceneTransition.change_scene("res://Scenes/elevator_scene_2.tscn")


func _on_button_3_pressed():
	SceneTransition.change_scene("res://Scenes/elevator_scene_3.tscn")


func _on_button_4_pressed():
	SceneTransition.change_scene("res://Scenes/elevator_scene_4.tscn")
