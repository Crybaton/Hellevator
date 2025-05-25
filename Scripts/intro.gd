extends Node2D
@onready var TimerIntro = $TimerIntro

func _ready():
	SoundManager._stop_all()
	TimerIntro.set_wait_time(5)
	TimerIntro.start()
	SoundManager._leaving()

func _on_timer_intro_timeout():
	SceneTransition.change_scene("res://Scenes/elevator.tscn")
