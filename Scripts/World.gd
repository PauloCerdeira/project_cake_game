extends Node2D

var comboCounter = 0

func _ready():
	pass

func consoleLog(string):
	$UI/Label.text = 	$UI/Label.text + "\n" + string

func increaseComboCounter():
	comboCounter += 1
	$UI/ComboCounter.text = str(comboCounter) + "x"
	$UI/ComboCounter/AnimationPlayer.play("Increment")

func resetComboCounter():
	comboCounter = 0
	$UI/ComboCounter.text = str(comboCounter) + "x"
	$UI/ComboCounter/AnimationPlayer.play("madeMistake")


func _on_Button_reset_pressed():
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()

func _on_Button_easy_pressed():
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()

func _on_MusicAudio_finished():
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()


