extends Area2D


func _ready():
	pass

func _on_SphereDeadZone_area_entered(area):
	var world = get_node("/root/World")
	world.consoleLog("sphere missed")
	world.resetComboCounter()
	area.queue_free()
