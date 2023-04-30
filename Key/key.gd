extends Area


func _ready():
	pass


func _on_key_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit != null:
			exit.unlocked()
			var sound = get_node_or_null("/root/Game/Key")
			if sound != null:
				sound.playing = true
			queue_free()
		
