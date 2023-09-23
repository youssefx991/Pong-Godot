extends KinematicBody2D

var speed = 600
var ball

func _ready():
	ball = get_parent().find_node('Ball')
	
func _physics_process(delta):
	move_and_slide(Vector2(0, ball_direction()) * speed)

func ball_direction():
	if abs(ball.position.y - position.y) > 75:
		if (ball.position.y > position.y):
			return 1
		else:
			return -1
	return 0
