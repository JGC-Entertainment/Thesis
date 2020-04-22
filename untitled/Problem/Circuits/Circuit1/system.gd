extends Control

func _ready():
	$currentanim.play("current")


func _on_voltup_pressed():
	if global1.volt_value >= 0:
		global1.volt_value += 1
		$voltvalue.set_text(str(global1.volt_value) + "V")


func _on_voltdown_pressed():
	if global1.volt_value >= 0:
		global1.volt_value -= 1
		$voltvalue.set_text(str(global1.volt_value) + "V")


func _on_submit_pressed():
	var result = global1.volt_value
	if result == global1.volt_answer1:
		queue_free()
		
	else:
		$result.set_text("You are wrong!")

