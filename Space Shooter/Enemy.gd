extends Area2D
#I absolutely hate spellig and codig and grammer
const ExplosionEffect = preload("res://explosioneffect.tscn") 

export (int) var SPEED = 30
export (int) var ARMOR = 3



func _process(delta):
	position.x -= SPEED * delta

#why is this dude goig so fast?!?!

func _on_Enemy_body_entered(body):
	body.queue_free()
	body._create_hit_effect()
	var main = get_tree().current_scene
	var explosionEffect = ExplosionEffect.instance()
	ARMOR -= 1
	if ARMOR <= 0:
		if main.is_in_group("World"):
			main.score += 10
		queue_free()
		main.add_child(explosionEffect)
		explosionEffect.global_position = global_position

