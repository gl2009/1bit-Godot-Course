extends Control

func _ready():
	VisualServer.set_default_clear_color(Color.black)

func _on_StartButton_pressed():
# warning-ignore:return_value_discarded
	SoundFx.play("Click", 1, -10)
	get_tree().change_scene("res://World.tscn")


func _on_LoadButton_pressed():
	SoundFx.play("Click", 1, -10)
	SaverAndLoader.is_loading = true
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://World.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()
