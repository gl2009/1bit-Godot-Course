extends Area2D

export (int) var SPEED = 20
export (int) var ARMOR = 3

func _process(delta):
	position.x -= SPEED * delta


func _on_Enemy_body_entered(body):
	body.queue_free()
	ARMOR -= 1
	if ARMOR <= 0:
		queue_free()
