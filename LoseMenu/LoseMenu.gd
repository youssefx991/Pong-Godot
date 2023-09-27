extends Control



func _on_AddBtn_pressed():
	if ($MarginContainer/VBoxContainer/LineEdit.text == ''):
		$MarginContainer/VBoxContainer/Label.text = "Do not leave it empty"
	else:
		print($MarginContainer/VBoxContainer/LineEdit.text)	
		$MarginContainer/VBoxContainer/Label.text = "Enter your name LOSER"
		
