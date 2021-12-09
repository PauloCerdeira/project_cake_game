extends Node2D

var canBurn1 = false
var burnable1  = null
var canBurn2 = false
var burnable2  = null
var canBurn3 = false
var burnable3  = null
var canBurn4 = false
var burnable4  = null
var canBurn5 = false
var burnable5  = null
var canBurn6 = false
var burnable6  = null

func _ready():
	pass

func _process(_delta):
	handleInput()

func handleInput():
	if Input.is_action_just_pressed("Burner_1"):
		if canBurn1:
			burnable1.burn()
		else:
			MadeMistake(1)
	if Input.is_action_just_pressed("Burner_2"):
		if canBurn2:
			burnable2.burn()
		else:
			MadeMistake(2)
	if Input.is_action_just_pressed("Burner_3"):
		if canBurn3:
			burnable3.burn()
		else:
			MadeMistake(3)
	if Input.is_action_just_pressed("Burner_4"):
		if canBurn4:
			burnable4.burn()
		else:
			MadeMistake(4)
	if Input.is_action_just_pressed("Burner_5"):
		if canBurn5:
			burnable5.burn()
		else:
			MadeMistake(5)
	if Input.is_action_just_pressed("Burner_6"):
		if canBurn6:
			burnable6.burn()
		else:
			MadeMistake(6)

func MadeMistake(burnerId):
	 get_node("/root/World").consoleLog("made mistake in burner " + str(burnerId))

func _on_Burner_1_area_entered(area):
	area.burnerPosition = $Burner_1.position
	burnable1 = area
	canBurn1 = true
func _on_Burner_1_area_exited(_area):
	canBurn1 = false
	
func _on_Burner_2_area_entered(area):
	area.burnerPosition = $Burner_2.position
	burnable2 = area
	canBurn2 = true
func _on_Burner_2_area_exited(_area):
	canBurn2 = false
	
func _on_Burner_3_area_entered(area):
	area.burnerPosition = $Burner_3.position
	burnable3 = area
	canBurn3 = true
func _on_Burner_3_area_exited(_area):
	canBurn3 = false
	
func _on_Burner_4_area_entered(area):
	area.burnerPosition = $Burner_4.position
	burnable4 = area
	canBurn4 = true
func _on_Burner_4_area_exited(_area):
	canBurn4 = false
	
func _on_Burner_5_area_entered(area):
	area.burnerPosition = $Burner_5.position
	burnable5 = area
	canBurn5 = true
func _on_Burner_5_area_exited(_area):
	canBurn5 = false
	
func _on_Burner_6_area_entered(area):
	area.burnerPosition = $Burner_6.position
	burnable6 = area
	canBurn6 = true
func _on_Burner_6_area_exited(_area):
	canBurn6 = false
