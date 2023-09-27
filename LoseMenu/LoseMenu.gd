extends Control



func _on_AddBtn_pressed():
	if ($MarginContainer/VBoxContainer/LineEdit.text == ''):
		$MarginContainer/VBoxContainer/Label.text = "Do not leave it empty"
	elif Singleton.player_exists($MarginContainer/VBoxContainer/LineEdit.text):
		$MarginContainer/VBoxContainer/Label.text = "Name already exists"
		print("same name")
	else:
		Singleton.player_name = $MarginContainer/VBoxContainer/LineEdit.text
		Singleton.add_player()
		get_tree().change_scene("res://MainMenu/MainMenu.tscn")
		
