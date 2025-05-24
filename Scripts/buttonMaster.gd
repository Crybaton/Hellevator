extends Node2D

func _physics_process(delta):
	_death()

func _on_button_close_pressed():
	if Global.PanicDoorsClosed == false:
		Global.PanicDoorsClosing = true
		Global.PanicDoorsClosed = true
		print("button")
		Global.ElevatorDamage += 1
		print(Global.ElevatorDamage)

func _death():
	if Global.ElevatorDamage == 3:
		SceneTransition.change_scene("res://Scenes/death_screen.tscn")

	
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


func _on_button_5_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_5.tscn")


func _on_button_6_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_6.tscn")


func _on_button_7_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_7.tscn")


func _on_button_8_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_8.tscn")


func _on_button_9_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_9.tscn")
