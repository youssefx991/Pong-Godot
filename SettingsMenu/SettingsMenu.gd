extends Control

var is_easy = false
var is_hard = false

func _on_Back_pressed():
	var out = get_tree().change_scene("res://MainMenu/MainMenu.tscn")
	print(out)


func _on_EasyBox_toggled(button_pressed):
	Singelton.value = 150
	Singelton.difficulty = "Easy"


func _on_HardBox_toggled(button_pressed):
	Singelton.value = 30
	Singelton.difficulty = "Hard"
	
