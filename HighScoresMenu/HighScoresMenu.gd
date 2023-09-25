extends Control

func _physics_process(delta):
	$MarginContainer/VBoxContainer/Label.text = Scores.text


func _on_Back_pressed():
	var out = get_tree().change_scene("res://MainMenu/MainMenu.tscn")
	print(out)
