extends Area2D


func _ready():
	pass

func _on_SphereDeadZone_area_entered(area):
	get_node("/root/World").consoleLog("sphere missed")
	area.queue_free()
