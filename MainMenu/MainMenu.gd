extends Control



func _on_Play_pressed():
	get_tree().change_scene("res://Level/Level.tscn")

func _on_Settings_pressed():
	get_tree().change_scene("res://SettingsMenu/SettingsMenu.tscn")

func _on_Highscores_pressed():
	get_tree().change_scene("res://SettingsMenu/SettingsMenu.tscn")
	
func _on_Quit_pressed():
	get_tree().quit()


