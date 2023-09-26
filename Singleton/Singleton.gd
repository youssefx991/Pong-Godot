extends Node2D
var value
var difficulty
var ball_acceleration
var game_status
var is_easy
var is_hard

func _ready():
	value = 150
	difficulty = "Easy"
	ball_acceleration = 0.1
	game_status = " "
	is_easy = true
	is_hard = false
	
func set_hard():
	value = 35
	difficulty = 'Hard'
	is_hard = true
	is_easy = false
	
func set_easy():
	value = 150
	difficulty = "Easy"
	is_easy = true
	is_hard = false
