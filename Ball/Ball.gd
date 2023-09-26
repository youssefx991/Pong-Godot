extends KinematicBody2D

var speed = 600
var velocity = Vector2.ZERO


func _ready():
	randomize()
	
	if (Singleton.difficulty == "Easy"):
		velocity.x = 1
	else:
		velocity.x = [-1, 1][randi() % 2]
		
	velocity.y = [-0.8, 0.8][randi() % 2]
	
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * speed * delta)
		
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)
		$CollisionSound.play()
	
	if (Singleton.difficulty == 'Hard'):
		if (speed == 0):
			speed += Singleton.ball_acceleration * speed
		else:
			speed += Singleton.ball_acceleration
		
func stop_ball():
	if (Singleton.difficulty == "Easy"):
		velocity.x = 1
	else:
		velocity.x = [-1, 1][randi() % 2]
		
	velocity.y = [-0.8, 0.8][randi() % 2]
	
	speed = 0
	
func restart_ball():
	if (Singleton.difficulty == "Easy"):
		velocity.x = 1
	else:
		velocity.x = [-1, 1][randi() % 2]
		
	speed = 600
	#velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.8, 0.8][randi() % 2]
