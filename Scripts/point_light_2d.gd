extends PointLight2D

# Timer für Lichteffekte
@onready var flicker_timer: Timer = $"../FlickerTimer"
@onready var flicker_start_timer: Timer = $"../FlickerStartTimer"

# Einstellung für Lag
var follow_speed := 8.0
var initialized := false

var flicker_duration := 0.8
var flicker_elapsed := 0.0

func _ready():
	randomize()
	energy = 1.0 # Wert für volles Licht
	start_flicker_delay()

func _physics_process(delta):
	var target = get_global_mouse_position()
	var local_target = get_parent().to_local(target)
	
	if not initialized:
		position = local_target
		initialized = true
	else:
		position = position.lerp(local_target, delta * follow_speed)

func start_flicker_delay():
	var wait_time = randf_range(4.0, 10.0)  # 4 bis 10 Sekunden bis nächstes Flackern
	flicker_start_timer.start(wait_time)

func _on_flicker_start_timer_timeout():
	flicker_elapsed = 0.0
	flicker_timer.start(0.05)  # Flackern jede 50ms

func _on_flicker_timer_timeout():
	flicker_elapsed += flicker_timer.wait_time
	if flicker_elapsed >= flicker_duration:
		# Ende
		energy = 1.0
		flicker_timer.stop()
		start_flicker_delay()
	else:
		# Flackern
		energy = randf_range(0.3, 1.0)
