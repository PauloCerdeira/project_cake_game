extends Node2D

var PRE_SPHERE = preload("res://Scenes/Sphere.tscn")
var sphereTimer = 0
var sphereMultiplier = 100
func _ready():
	pass

func _process(delta):
	sphereTimer +=  delta * sphereMultiplier
	if sphereTimer > 40:
		var x = randi() % 21
		var i = 0
		if x <= 15:
			i = 1
		elif x <= 18:
			i = 2
#		elif x <= 19:
#			i = 3
		else:
#			i = 6
			i=1
		createSpheres(i)
		sphereTimer = 0
	

func createSpheres(num):
#	print("num aqui: " + str(num))
	var avaiableBurners = [-300,-200,-100,100,200,300]
	for _i in range(num):
		var n = PRE_SPHERE.instance()
		var x = avaiableBurners[randi() % avaiableBurners.size()]
		n.position = Vector2(x,-800)
		avaiableBurners.erase(x)
		add_child(n)
#	print(num)
