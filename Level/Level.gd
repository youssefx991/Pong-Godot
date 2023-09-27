extends Node2D

var PlayerScore
var OpponentScore
	
func _ready():
	PlayerScore = 0
	OpponentScore = 0
	reset_ball()

func _process(delta):
	$PlayerScore.text = str(PlayerScore)
	Scores.player_score = PlayerScore
	$OpponentScore.text = str(OpponentScore)
	$Countdown.text = str(int($Timer.time_left) + 1)
	
	
func reset_ball():
	$Ball.position = Vector2(640, 360)
	get_tree().call_group('BallGroup', 'stop_ball')
	$Countdown.visible = true;
	$Timer.start()
	$ScoreSound.play()
	$Player.position = Vector2(35, 360)
	$Opponent.position = Vector2(1280 - 35, 360)
	

func _on_Timer_timeout():
	get_tree().call_group('BallGroup', 'restart_ball')
	$Countdown.visible = false


func _on_WallLeft_body_entered(body):
	OpponentScore += 1
	if (OpponentScore == 1):
		Scores.addScore(Scores.player_score)
		get_tree().change_scene("res://LoseMenu/LoseMenu.tscn")
	else:
		reset_ball()

func _on_WallRight_body_entered(body):
	PlayerScore += 1
	reset_ball()
