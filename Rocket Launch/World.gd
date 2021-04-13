extends Node

onready var animationPlayer: = $AnimationPlayer

func _ready():
	pass


func _on_TextureButton_pressed():
	animationPlayer.play("Launch")

