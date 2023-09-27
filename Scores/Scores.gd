extends Node2D

## Create an array to store scores
#var highScores = []
#
#var player_score
var text = " "
## Function to add a score to the array and maintain sorting order
#func addScore(score):
#	# Add the score to the array
#	highScores.append(score)
#	# Sort the array in reverse order
#	#highScores.sort_custom(self, "_sortScores")
#
## Custom sorting function to sort in reverse order
#func _sortScores(a, b):
#	return b - a

# Display the high scores
func displayScores():
	text = ''
	for player in Singleton.players:
		print(player["name"] + ": " + str(player["score"]))
		text += player["name"] + ": " + str(player["score"]) + "\n"
		
