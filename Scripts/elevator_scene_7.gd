extends Node2D
@onready var timerLevel = $TimerLevel
@onready var timerMonster = $TimerMonster
@onready var animMonster = $MonsterAnim
var random = RandomNumberGenerator.new()

func _ready():
	SoundManager._stop_all()
	SoundManager._elevator7()
	Global.Save = false 
	Global.PanicDoorsClosed = false
	Global.PanicDoorsClosing = false
	timerLevel.set_wait_time(random.randf_range(7, 15))
	timerLevel.start()
	

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
	$MonsterAnim.play("Monster")
	SoundManager._appearance()
