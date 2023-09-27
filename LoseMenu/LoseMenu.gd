extends Control



func _on_AddBtn_pressed():
	if ($MarginContainer/VBoxContainer/LineEdit.text == ''):
		$MarginContainer/VBoxContainer/Label.text = "Do not leave it empty"
	else:
		Singleton.add_player($MarginContainer/VBoxContainer/LineEdit.text)
		get_tree().change_scene("res://MainMenu/MainMenu.tscn")
		
