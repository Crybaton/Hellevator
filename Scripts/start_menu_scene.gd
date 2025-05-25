extends Node2D

func _ready() -> void:
	SoundManager._stop_all()
	SoundManager._jingle()

func _on_button_start_pressed():
	SoundManager._pressed()
	SceneTransition.change_scene("res://Transition/intro.tscn")
	$ParallaxAtHome/Doors.hide()
	$AnimationLogo.play("LogoDown")
	await($AnimationLogo.animation_finished)
	$ParallaxAtHome/Logo.hide()
	
