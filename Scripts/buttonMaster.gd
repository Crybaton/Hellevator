extends Node2D
@onready var timer = $TimerSave

func _physics_process(delta):
	_death()
	#print(Global.Save)
func _on_button_close_pressed():
	if Global.PanicDoorsClosed == false:
		Global.PanicDoorsClosing = true
		Global.PanicDoorsClosed = true
		print("button")
		Global.ElevatorDamage += 1
		print(Global.ElevatorDamage)

func _death():
	if Global.ElevatorDamage == 3:
		get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")

	
func _on_button_1_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator.tscn")


func _on_button_2_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_2.tscn")


func _on_button_3_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_3.tscn")


func _on_button_4_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_4.tscn")


func _on_button_5_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_5.tscn")


func _on_button_6_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_6.tscn")


func _on_button_7_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_7.tscn")


func _on_button_8_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_8.tscn")


func _on_button_9_pressed():
	timer.start()
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/elevator_scene_9b.tscn")


func _on_timer_save_timeout():
	Global.Save = true
