extends Area2D
#joe mama so fat
export(Resource) var connection = null
export(String, FILE, "*.tscn") var new_level_path = ""
var active = true

func _ready():
	pass

func _on_Door_body_entered(Player):
	if active == true:
		print("THIS WORKS!")
		Player.emit_signal("hit_door", self)
		active = false
