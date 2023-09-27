extends Node2D

var value
var difficulty
var ball_acceleration
var is_easy
var is_hard
var player_name
var player_score

var players = [
	{"name": "Admin", "score": 0}
]



func sort_by_score(a, b):
	return a["score"] > b["score"]
	
func _ready():
	
	player_name = ""
	player_score = 0
	value = 150
	difficulty = "Easy"
	ball_acceleration = 0.1
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

func add_player():
	var newPlayer ={ 
		"name": player_name,
		"score": player_score
	}
	players.append(newPlayer)
	players.sort_custom(self, 'sort_by_score')
	
func player_exists(name):
	for player in players:
		if (name == player["name"]):
			return true
	return false
