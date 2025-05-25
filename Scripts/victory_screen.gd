extends Node2D

func _ready():
	SoundManager._stop_all()
	SoundManager._home()

func _on_button_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Scenes/start_menu_scene.tscn")
