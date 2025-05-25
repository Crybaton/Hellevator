extends Node2D

@onready var timerLevel = $TimerLevel
@onready var timerMonster = $TimerMonster
@onready var timerFinger = $TimerFinger
@onready var Finger1 = $ParallaxAtHome/Finger
@onready var Finger2 = $ParallaxAtHome/Finger2
@onready var Finger3 = $ParallaxAtHome/Finger3

var random = RandomNumberGenerator.new()

func _ready():
	SoundManager._stop_all()
	SoundManager._elevator9()
	Global.Save = false 
	Global.PanicDoorsClosed = false
	Global.PanicDoorsClosing = false
	timerLevel.set_wait_time(random.randf_range(7, 15))
	timerLevel.start()
	
	Finger1.show()
	Finger2.hide()
	Finger3.hide()
	

func _on_timer_monster_timeout():
	print("BUH")
	if Global.Save == false:
		get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
	else:
		pass
		


func _on_timer_level_timeout():
	timerLevel.stop()
	print("Monster")
	timerMonster.set_wait_time(20)
	timerMonster.start()
	SoundManager._appearance()
	
	timerFinger.set_wait_time(6)
	timerFinger.start()
	Finger1.hide()
	Finger2.show()
	Finger3.hide()
	


func _on_timer_finger_timeout():
	Finger1.hide()
	Finger2.hide()
	Finger3.show()
