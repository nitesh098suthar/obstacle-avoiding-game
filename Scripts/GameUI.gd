extends Control

var score = 0
@onready var scoreLabel = $Score

func _process(delta):
	score +=1
	scoreLabel.text = "Score %d" % score
