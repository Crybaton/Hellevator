extends Node2D
@onready var popup = $NumPadWindow
@onready var poppedout = false

func _on_keypad_pressed():
	if poppedout == false:
		popup.show()
		poppedout = true
	else:
		popup.hide()
		poppedout = false
