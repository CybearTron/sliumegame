extends KinematicBody2D
var attack_damage = 0
var health = 100
var velocity = Vector2(0,0)
const SPEED = 200


func _physics_process(delta):
	# Movement and movenment animation
	if Input.is_action_pressed("d"):
		velocity.x = SPEED
		$AnimatedSprite.play("right")
	elif Input.is_action_pressed("a"):
		velocity.x = -SPEED
		$AnimatedSprite.play("left")
	else:
		velocity.x = 0
	
	velocity.y = velocity.y
	
	if Input.is_action_pressed("s"):
		velocity.y = SPEED
		$AnimatedSprite.play("idle")
	elif Input.is_action_pressed("w"):
		velocity.y = -SPEED
		$AnimatedSprite.play("back")
		
	else:
		velocity.y = 0
	velocity = move_and_slide(velocity, Vector2.UP)
	
	
	
