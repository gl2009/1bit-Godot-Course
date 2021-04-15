extends Area2D

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += 4
	if Input.is_action_pressed("ui_left"):
		position.x -= 4
	if Input.is_action_pressed("ui_up"):
		position.y -= 4
	if Input.is_action_pressed("ui_down"):
		position.y += 4
