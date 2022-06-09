extends ColorRect

var paused = false setget set_paused

func set_paused(value):
	paused = value
	get_tree().paused = paused
	visible = paused
	if paused:
		SoundFx.play("Pause", 1, -10)
	else:
		SoundFx.play("Unpause", 1, -10)

# warning-ignore:unused_argument
func _process(delta):
	var Player_is_alive = get_tree().get_nodes_in_group("Player").size() > 0
	if Input.is_action_just_pressed("Pause") and Player_is_alive:
		self.paused = !paused

func _ready():
	pass


func _on_Button_pressed():
	SoundFx.play("Click", 1, -10)
	self.paused = false


func _on_Button2_pressed():
	SoundFx.play("Click", 1, -10)
	get_tree().quit()
