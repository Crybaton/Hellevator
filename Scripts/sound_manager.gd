extends Node

# Audio Manager, AudioStreamRandomizer


@onready var button_pressed: AudioStreamPlayer = $"Button Pressed"
@onready var elevator_closing: AudioStreamPlayer = $"Elevator Closing"
@onready var panic_doors: AudioStreamPlayer = $"Panic Doors"

@onready var monster_drop: AudioStreamPlayer = $"Monster Drop"


# Sound Library (One Time)
func _pressed():
	button_pressed.play()

func _closing():
	elevator_closing.play()

func _panic():
	panic_doors.play()

func _appearance():
	monster_drop.play()


@onready var jingle: AudioStreamPlayer = $Jingle
@onready var hallway_1: AudioStreamPlayer = $"Hallway 1"


# Music & Ambience (Loops)
# Play Music
func _jingle():
	jingle.play()

func _elevator1():
	hallway_1.play()


# Stop Music
func _stop_jingle():
	jingle.stop()

func _stop_all():
	jingle.stop()
	hallway_1.stop()
