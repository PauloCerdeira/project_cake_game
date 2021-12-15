extends Node2D

var PRE_SPHERE = preload("res://Scenes/Sphere.tscn")

#Variaveis para geração aleatoria constante de esferas
var sphereTimer = 0
var sphereMultiplier = 100

#Arrays dos valores de cada dificuldade
var easyModeValues = [5, 0.5]
var normalModeValues = [2.5, 0.35]
var hardModeValues =  [1.5, 0.15]

#Variaveis para geração de esferas dinamicamente
var audioSpectrum = AudioServer.get_bus_effect_instance(1, 0)
var spectrumTimer = 0
var spectrumCurrentValue = 0
var spectrumLastValue = 0
var spectrumInterval = 1.5
var spectrumTimerMax = 0.15

func _ready():
	$SphereCreatorAudio.seek(2)
	pass

func _process(delta):
	generateSpheresByAudio(delta)

func generateSpheresByAudio(delta):
	spectrumTimer += delta
	if spectrumTimer > spectrumTimerMax:
		spectrumTimer = 0
		spectrumCurrentValue = (audioSpectrum.get_magnitude_for_frequency_range(0,100) * 100).x
		if abs(spectrumCurrentValue - spectrumLastValue) > spectrumInterval:
			createSpheres()
		spectrumLastValue = spectrumCurrentValue
	

func createRandomSpheres(delta):
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

func createSpheres(num = 1):
#	print("num aqui: " + str(num))
	var avaiableBurners = [-300,-200,-100,100,200,300]
	for _i in range(num):
		var n = PRE_SPHERE.instance()
		var x = avaiableBurners[randi() % avaiableBurners.size()]
		n.position = Vector2(x,-800)
		avaiableBurners.erase(x)
		add_child(n)
#	print(num)
