extends Node2D

func _ready():
	pass

func consoleLog(string):
	$UI/Label.text = 	$UI/Label.text + "\n" + string
