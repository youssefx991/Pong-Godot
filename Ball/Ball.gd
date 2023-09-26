extends KinematicBody2D

var speed = 600
var velocity = Vector2.ZERO


func _ready():
	randomize()
	
	if (Singelton.difficulty == "Easy"):
		velocity.x = 1
	else:
		velocity.x = [-1, 1][randi() % 2]
		
	velocity.y = [-0.8, 0.8][randi() % 2]
	
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * speed * delta)
		
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)
		$CollisionSound.play()
		
func stop_ball():
	if (Singelton.difficulty == "Easy"):
		velocity.x = 1
	else:
		velocity.x = [-1, 1][randi() % 2]
		
	velocity.y = [-0.8, 0.8][randi() % 2]
	
	speed = 0
	
func restart_ball():
	if (Singelton.difficulty == "Easy"):
		velocity.x = 1
	else:
		velocity.x = [-1, 1][randi() % 2]
		
	speed = 600
	#velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.8, 0.8][randi() % 2]
