extends Node2D


func _ready():
	SoundFx.play("EnemyDie", 1, -10)


func _on_Dust_Effect7_tree_exited():
	queue_free()
