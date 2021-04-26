extends Area2D
#I absolutely hate spellig and codig and grammer
const ExplosionEffect = preload("res://explosioneffect.tscn") 

export (int) var SPEED = 50
export (int) var ARMOR = 3

func _process(delta):
	position.x -= SPEED * delta


func _on_Enemy_body_entered(body):
	body.queue_free()
	ARMOR -= 1
	if ARMOR <= 0:
		queue_free()

func _exit_tree():
	var main = get_tree().current_scene
	var explosionEffect = ExplosionEffect.instance()
	main.add_child(explosionEffect)
	explosionEffect.global_position = global_position
