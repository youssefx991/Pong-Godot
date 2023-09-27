extends Node2D

var value
var difficulty
var ball_acceleration
var is_easy
var is_hard
var player_name
var player_score

var players = []



func sort_by_score(a, b):
	return a["score"] > b["score"]
	
func _ready():
	file_read()
	players.sort_custom(self, 'sort_by_score')
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

func file_read():
	

# Open the file for reading
	var file = File.new()
	if file.open("res://players.txt", File.READ) == OK:
		print("file opened")
		while !file.eof_reached():
			print("didn't reach end of file")
			var line = file.get_line().strip_edges()  # Read and clean the line
			if line.empty():
				continue  # Skip empty lines

			# Split the line into key and value
			var parts = line.split(":")
			if parts.size() == 2:
				print("split with , ")
				var key = parts[0].strip_edges()
				var value = parts[1].strip_edges()

				# Add the key-value pair to the current player dictionary
				var current_player = {
					"name": key,
					"score": int(value)
				}
				

				# Add the current player to the 'players' array
				players.append(current_player)
		print("Wrote success")
		file.close()

func file_write():
	var file = File.new()
	if file.open("res://players.txt", File.WRITE) == OK:
		for player in players:
			# Write player data to the file in the specified format
			file.store_line(player["name"] + " : " + str(player["score"]))
			file.store_line("\n")  

		file.close()
	else:
		print("Failed to open the file for writing.")
