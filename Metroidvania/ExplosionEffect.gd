extends Node2D


func _ready():
	SoundFx.play("Explosion", rand_range(0.5, 1.0))
