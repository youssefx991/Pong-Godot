extends Control

var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		self.is_paused = !is_paused
	
func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_Resume_pressed():
	self.is_paused = false
	


func _on_Quit_pressed():
	get_tree().quit()


func _on_Main_pressed():
	self.is_paused = false
	Scores.addScore(Scores.player_score)
	var out = get_tree().change_scene("res://MainMenu/MainMenu.tscn")
	print(out)


func _on_Settings_pressed():
	var out = get_tree().change_scene("res://SettingsMenu/SettingsMenu.tscn")
	print(out)
