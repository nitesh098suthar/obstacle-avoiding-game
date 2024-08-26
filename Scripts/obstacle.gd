extends CharacterBody3D


const speed = 20

func _process(delta):
	velocity.z += speed*delta

	move_and_slide()
