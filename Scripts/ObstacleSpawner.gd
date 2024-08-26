extends Node3D

@onready var obstacle = preload("res://Scenes/obstacle.tscn")
@onready var spawn_position = $SpawnPosition

func _on_spawn_delay_timeout():
	var obstacleInstance = obstacle.instantiate()
	obstacleInstance.position = spawn_position.position + Vector3(randf_range(-2, 2), 0, 0)
	
	add_child(obstacleInstance)
	
