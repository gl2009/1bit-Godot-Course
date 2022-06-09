extends "res://Projectile.gd"

func _ready():
	SoundFx.play("Bullet", rand_range(0.5, 1.2))
	set_process(false)
