extends Window
const PASSWORD = "123456789"
@onready var label = $Camera2D/Keypad/VBoxContainer/MarginContainer/Label

@onready var popup = $"."
@onready var poppedout = false

func _on_keypad_pressed():
	if poppedout == false:
		popup.show()
		poppedout = true
	else:
		popup.hide()
		poppedout = false

func key_press(digit):
	if len(label.text) < 9:
		label.text += str(digit)



func _on_button_pressed():
	key_press(1)


func _on_button_2_pressed():
	key_press(2)


func _on_button_3_pressed():
	key_press(3)


func _on_button_4_pressed():
	key_press(4)


func _on_button_5_pressed():
	key_press(5)


func _on_button_6_pressed():
	key_press(6)


func _on_button_7_pressed():
	key_press(7)


func _on_button_8_pressed():
	key_press(8)


func _on_button_9_pressed():
	key_press(9)


func _on_button_c_pressed():
	label.text = ""


func _on_button_0_pressed():
	key_press(0)


func _on_button_ok_pressed():
	if label.text == PASSWORD:
		print("victory")
		popup.hide()
		SceneTransition.change_scene("res://Scenes/victory_screen.tscn")
		
	else:
		popup.hide()
		get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		label.text = ""
