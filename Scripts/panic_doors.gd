extends Node2D

func _physics_process(delta):
	PanicDoorsClose()
	#PanicDoorsOpen()
func PanicDoorsClose():
	#print("Close")
	if Global.PanicDoorsClosing == true and Global.PanicDoorsClosed == true:
		$PanicDoors.play("PanicClose")
		await($PanicDoors.animation_finished)
		Global.PanicDoorsClosing = false	

#func PanicDoorsOpen():
	#print("Open")
	#if Global.PanicDoorsClosing == false and Global.PanicDoorsClosed == false:
		#$PanicDoors.play_backwards("PanicClose")
		#await($PanicDoors.animation_finished)
		#Global.PanicDoorsClosed = true	
