extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Back_pressed():
	var out = get_tree().change_scene("res://MainMenu/MainMenu.tscn")
	print(out)


func _on_EasyBox_toggled(button_pressed):
	pass # Replace with function body.
