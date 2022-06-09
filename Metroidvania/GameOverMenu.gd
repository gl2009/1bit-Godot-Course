extends CenterContainer



func _ready():
	pass

func _on_QuitButton_pressed():
	get_tree().quit()

func _on_LoadButton_pressed():
	SoundFx.play("Click", 1, -10)
	SaverAndLoader.is_loading = true
	get_tree().change_scene("res://World.tscn")
