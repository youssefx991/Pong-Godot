extends Control


func _ready():
	$MarginContainer/SettingsContainer/DifficultyContainer/EasyBtn.pressed = Singleton.is_easy
	$MarginContainer/SettingsContainer/DifficultyContainer/HardBtn.pressed = Singleton.is_hard
	
func _on_Back_pressed():
	var out = get_tree().change_scene("res://MainMenu/MainMenu.tscn")
	print(out)

func _on_EasyBtn_pressed():
	Singleton.set_easy()

func _on_HardBtn_pressed():
	Singleton.set_hard()
	
