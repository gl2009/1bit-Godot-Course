extends Node

onready var scoreLabel = $ScoreLabel

var score = 0 

func _on_Enemy_score_up():
	score += 10
	scoreLabel.text = "Score = " + str(score)

func _on_Ship_player_death():
	yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://GameOverScene.tscn")
