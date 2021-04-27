extends Node

onready var scoreLabel = $ScoreLabel

var score = 0 

func _on_Enemy_score_up():
	score += 10
	scoreLabel.text = "Score = " + str(score)
