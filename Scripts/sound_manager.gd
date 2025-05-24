extends Node

# Audio Manager, AudioStreamRandomizer


@onready var turning_on: AudioStreamPlayer = $"Turning On"
@onready var typing: AudioStreamPlayer = $Typing
@onready var laugh: AudioStreamPlayer = $Laugh
@onready var steps: AudioStreamPlayer = $Steps
@onready var shuffle: AudioStreamPlayer = $Shuffle
@onready var heavy_breathing: AudioStreamPlayer = $"Heavy Breathing"
@onready var squelch: AudioStreamPlayer = $Squelch


#Sound Library (One Time)
func _turnon():
	turning_on.play()

func _turnoff():
	turning_on.stop()

func _typing():
	typing.play()

func _laugh():
	laugh.play()
	
func _steps(): #!!Dont like the sound that much, more steps?
	steps.play()

func _shuffle():
	shuffle.play()

func _squelch():
	squelch.play()

@onready var cicada_forest: AudioStreamPlayer = $"Cicada Forest"
@onready var static_hum: AudioStreamPlayer = $"Static Hum"
@onready var whisper: AudioStreamPlayer = $Whisper
@onready var funeral_chant: AudioStreamPlayer = $"Funeral Chant"
@onready var gong: AudioStreamPlayer = $Gong
@onready var menu_gong: AudioStreamPlayer = $"Menu Gong"

#Music & Ambience (Loops)
#Play Music
func _staticsound():
	static_hum.play()

func _cicada():
	cicada_forest.play()

func _menu_gong():
	menu_gong.play()

#Stop Music
func _stop_all():
	cicada_forest.stop()
	whisper.stop()
	heavy_breathing.stop()
	gong.stop()
	menu_gong.stop()


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
func play_room_sound(room_name: String):
	_stop_all()
	if room_name in room_sounds:
		var sound_name = room_sounds[room_name]
		var sound_player = get_node(sound_name)  #Nimmt die Nodes.
		if sound_player:
			sound_player.play()
		else:
			printerr("Sound not found.")
	else:
		printerr("No sound defined for this room.")


#Credits:
#All sound effects from ZapSplat
#Funeral Chant by https://www.abhayagiri.org/
#Gong by www.TempleSounds.net
