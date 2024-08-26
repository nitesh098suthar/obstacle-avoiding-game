extends CharacterBody3D

@export var speed = 200
@export var gravity = 30
@export var jumpForce = 500

func _ready():
	print("welcome")

func _process(delta):
	if not is_on_floor():
		velocity.y -= gravity*delta
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = jumpForce*delta
	if Input.is_action_pressed("Left"):
		velocity.x = -speed * delta
	elif Input.is_action_pressed("Right"):
		velocity.x = +speed * delta
	else: 
		velocity.x = lerpf(velocity.x, 0, delta*10)
	move_and_slide()


func _on_collision_body_entered(body):
	if body.is_in_group("obstacle"):
		get_tree().reload_current_scene()
