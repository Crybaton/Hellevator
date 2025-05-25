extends Node

# Audio Manager, AudioStreamRandomizer


@onready var button_pressed: AudioStreamPlayer = $"Button Pressed"
@onready var elevator_closing: AudioStreamPlayer = $"Elevator Closing"
@onready var panic_doors: AudioStreamPlayer = $"Panic Doors"


#Sound Library (One Time)
func _pressed():
	button_pressed.play()

func _closing():
	elevator_closing.play()

func _panic():
	panic_doors.play()



#@onready var menu_gong: AudioStreamPlayer = $"Menu Gong"

#Music & Ambience (Loops)
#Play Music
#func _staticsound():
#	static_hum.play()

#Stop Music
#func _stop_all():
#	cicada_forest.stop()


#Dictionary um Räumen Musik zuzuordnen. 
#Hier werden die Nodes selbst genutzt und nicht die Variablen.
var room_sounds = {
	"YOUR BED": "Whisper",
	"BEDROOM": "Heavy Breathing",
	"STONE STAIRS": "Cicada Forest",
	"PLATEAU": "Cicada Forest",
	"BIG BUDDHA": "Cicada Forest",
	"CAVE ENTRY": "Funeral Chant",
	"LADY BUDDHA": "Funeral Chant",
	"TOMB": "Funeral Chant",
	"HER": "Gong",
	"GATE": "Cicada Forest",
	"DRAGON": "Cicada Forest",
	"SHRINE": "Gong",
}


#Vergleicht tatsächlichen Raumnamen und das Dictionary und
#spielt dann den zugeordneten Sound.
#func play_room_sound(room_name: String):
#	_stop_all()
#	if room_name in room_sounds:
#		var sound_name = room_sounds[room_name]
#		var sound_player = get_node(sound_name)  #Nimmt die Nodes.
#		if sound_player:
#			sound_player.play()
#		else:
#			printerr("Sound not found.")
#	else:
#		printerr("No sound defined for this room.")


#Credits:
#All sound effects from ZapSplat
#Funeral Chant by https://www.abhayagiri.org/
#Gong by www.TempleSounds.net
