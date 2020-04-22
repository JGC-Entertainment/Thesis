extends Control


func _ready():
	pass # Replace with function body.

func _on_option1_pressed():
	$result.set_text("Incorrect")

func _on_opttion2_pressed():
	queue_free()
