extends Area2D

func _input(event):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			var collisionShape = get_node("CollisionShape2D")
			$prompt.set_text("f")
			if event.is_action_pressed("ui_f"):
				global2.switch_scene("res://Problem/Resistor/Resistor3/resistor.tscn")
				collisionShape.disabled = true
				$prompt.set_text("x")
		else:
			$prompt.set_text("3")


