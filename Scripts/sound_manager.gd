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
@onready var hallway_1b: AudioStreamPlayer = $"Hallway 1b"
@onready var hallway_2: AudioStreamPlayer = $"Hallway 2"
@onready var hallway_3: AudioStreamPlayer = $"Hallway 3"
@onready var hallway_4: AudioStreamPlayer = $"Hallway 4"
@onready var hallway_5: AudioStreamPlayer = $"Hallway 5"
@onready var hallway_6: AudioStreamPlayer = $"Hallway 6"


# Music & Ambience (Loops)
# Play Music
func _jingle():
	jingle.play()

func _elevator1():
	hallway_1.play()
	hallway_1b.play()

func _elevator2():
	hallway_2.play()

func _elevator3():
	hallway_3.play()

func _elevator4():
	hallway_4.play()

func _elevator5():
	hallway_5.play()

func _elevator6():
	hallway_6.play()


# Stop Music
func _stop_jingle():
	jingle.stop()

func _stop_all():
	jingle.stop()
	hallway_1.stop()
#	hallway_1b.stop()
	hallway_2.stop()
	hallway_3.stop()
	hallway_4.stop()
	hallway_5.stop()
	hallway_6.stop()
