extends Node2D
@onready var TimerIntro = $TimerIntro

func _ready():
	TimerIntro.set_wait_time(5)
	TimerIntro.start()
	


func _on_timer_intro_timeout():
	SceneTransition.change_scene("res://Scenes/elevator.tscn")
