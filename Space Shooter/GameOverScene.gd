extends Node

onready var highscoreLabel = $HighScoreLabel

func _ready():
	set_highscore_label()

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://MainMenu.tscn")

func set_highscore_label():
	var save_data = SaveAndLoad.load_data_from_file()
	highscoreLabel.text = "Highscore : " + str(save_data.highscore)
