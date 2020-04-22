extends Control


func _ready():
	pass # Replace with function body.

func _on_option1_pressed():
	queue_free()

func _on_opttion2_pressed():
	$result.set_text("Incorrect")

