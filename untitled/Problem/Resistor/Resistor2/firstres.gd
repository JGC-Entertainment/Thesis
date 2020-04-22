extends Area2D

func _input(event):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			var collisionShape = get_node("CollisionShape2D")
			if event.is_action_pressed("ui_f"):
				global2.switch_scene("res://Problem/Resistor/Resistor1/resistor.tscn")


