extends Area2D

const PRE_BURN_LIGHT = preload("res://Scenes/BurnFlash.tscn")
var moveSpeed = 600
var burnerPosition = Vector2.ZERO

func _ready():
	pass

func _process(delta):
	self.position.y += delta * moveSpeed

func burn():
	var b = PRE_BURN_LIGHT.instance()
	b.position = burnerPosition
	get_parent().add_child(b)
	get_node("/root/World").increaseComboCounter()
	self.queue_free()
