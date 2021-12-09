extends Node2D
var comboCounter = 0
func _ready():
	pass

func consoleLog(string):
	$UI/Label.text = 	$UI/Label.text + "\n" + string

func increaseComboCounter():
	comboCounter += 1
	$UI/ComboCounter.text = str(comboCounter) + "x"

func resetComboCounter():
	comboCounter = 0
	$UI/ComboCounter.text = str(comboCounter) + "x"
	$UI/ComboCounter/AnimationPlayer.play("madeMistake")
