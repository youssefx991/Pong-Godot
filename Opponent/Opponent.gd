extends KinematicBody2D

var speed = 600
var ball
var distance

func _ready():
	ball = get_parent().find_node('Ball')
	
func _physics_process(delta):
	distance = Singelton.value
	move_and_slide(Vector2(0, ball_direction()) * speed)

func ball_direction():
	if abs(ball.position.y - position.y) > distance:
		if (ball.position.y > position.y):
			return 1
		else:
			return -1
	return 0
