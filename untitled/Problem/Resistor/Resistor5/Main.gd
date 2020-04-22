extends Control


export (NodePath) var sprite_path
onready var sprite = get_node(sprite_path)

export (NodePath) var second_sprite_path
onready var second_sprite = get_node(second_sprite_path)

export (NodePath) var third_sprite_path
onready var third_sprite = get_node(third_sprite_path)

onready var door = get_node("..")


var res_colors = ["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Gray", "White", "Gold", "Silver"]

var correct_answer

func _ready():
	$answer.set_text("Get value of " +str(global1.correct_answer5))
	pass

func _on_firstdown_pressed():
	if global1.color_number >= -1:
		global1.color_number += 1
	var get_color = res_colors[global1.color_number]
	
	match get_color :
		"Brown":
			sprite.modulate = Color(0.65, 0.16, 0.16, 1)
			print("first color is ",get_color)
			global1.first_digit = 1
		"Red":
			sprite.modulate = Color(1, 0, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 2
		"Orange":
			sprite.modulate = Color(1, 0.65, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 3
		"Yellow":
			sprite.modulate = Color(1, 1, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 4
		"Green":
			sprite.modulate = Color(0, 1, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 5
		"Blue":
			sprite.modulate = Color(0.25, 0.41, 0.88, 1)
			print("first color is ",get_color)
			global1.first_digit = 6
		"Violet":
			sprite.modulate = Color(0.93, 0.51, 0.93, 1)
			print("first color is ",get_color)
			global1.first_digit = 7
		"Gray":
			sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("first color is ",get_color)
			global1.first_digit = 8
		"White":
			sprite.modulate = Color(1, 1, 1, 1)
			print("first color is ",get_color)
			global1.first_digit = 9

func _on_firstup_pressed():
	if global1.color_number >= -1:
		global1.color_number -= 1
	var get_color = res_colors[global1.color_number]
	
	match get_color :
		"Brown":
			sprite.modulate = Color(0.65, 0.16, 0.16, 1)
			print("first color is ",get_color)
			global1.first_digit = 1
		"Red":
			sprite.modulate = Color(1, 0, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 2
		"Orange":
			sprite.modulate = Color(1, 0.65, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 3
		"Yellow":
			sprite.modulate = Color(1, 1, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 4
		"Green":
			sprite.modulate = Color(0, 1, 0, 1)
			print("first color is ",get_color)
			global1.first_digit = 5
		"Blue":
			sprite.modulate = Color(0.25, 0.41, 0.88, 1)
			print("first color is ",get_color)
			global1.first_digit = 6
		"Violet":
			sprite.modulate = Color(0.93, 0.51, 0.93, 1)
			print("first color is ",get_color)
			global1.first_digit = 7
		"Gray":
			sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("first color is ",get_color)
			global1.first_digit = 8
		"White":
			sprite.modulate = Color(1, 1, 1, 1)
			print("first color is ",get_color)
			global1.first_digit = 9


func _on_seconddown_pressed():
	if global1.second_color_number >= -1:
		global1.second_color_number += 1
	else:
		global1.second_color_number = 11
	var get_color2 = res_colors[global1.second_color_number]
	
	match get_color2 :
		"Black":
			second_sprite.modulate = Color(0, 0, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 0
		"Brown":
			second_sprite.modulate = Color(0.65, 0.16, 0.16, 1)
			print("second color is ",get_color2)
			global1.second_digit = 1
		"Red":
			second_sprite.modulate = Color(1, 0, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 2
		"Orange":
			second_sprite.modulate = Color(1, 0.65, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 3
		"Yellow":
			second_sprite.modulate = Color(1, 1, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 4
		"Green":
			second_sprite.modulate = Color(0, 1, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 5
		"Blue":
			second_sprite.modulate = Color(0.25, 0.41, 0.88, 1)
			print("second color is ",get_color2)
			global1.second_digit = 6
		"Violet":
			second_sprite.modulate = Color(0.93, 0.51, 0.93, 1)
			print("second color is ",get_color2)
			global1.second_digit = 7
		"Gray":
			second_sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("second color is ",get_color2)
			global1.second_digit = 8
		"White":
			second_sprite.modulate = Color(1, 1, 1, 1)
			print("second color is ",get_color2)
			global1.second_digit = 9


func _on_secondup_pressed():
	if global1.second_color_number >= -1:
		global1.second_color_number -= 1
	else:
		global1.second_color_number = 11
	var get_color2 = res_colors[global1.second_color_number]
	
	match get_color2 :
		"Black":
			second_sprite.modulate = Color(0, 0, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 0
		"Brown":
			second_sprite.modulate = Color(0.65, 0.16, 0.16, 1)
			print("second color is ",get_color2)
			global1.second_digit = 1
		"Red":
			second_sprite.modulate = Color(1, 0, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 2
		"Orange":
			second_sprite.modulate = Color(1, 0.65, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 3
		"Yellow":
			second_sprite.modulate = Color(1, 1, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 4
		"Green":
			second_sprite.modulate = Color(0, 1, 0, 1)
			print("second color is ",get_color2)
			global1.second_digit = 5
		"Blue":
			second_sprite.modulate = Color(0.25, 0.41, 0.88, 1)
			print("second color is ",get_color2)
			global1.second_digit = 6
		"Violet":
			second_sprite.modulate = Color(0.93, 0.51, 0.93, 1)
			print("second color is ",get_color2)
			global1.second_digit = 7
		"Gray":
			second_sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("second color is ",get_color2)
			global1.second_digit = 8
		"White":
			second_sprite.modulate = Color(1, 1, 1, 1)
			print("second color is ",get_color2)
			global1.second_digit = 9


func _on_thirddown_pressed():
	if global1.third_color_number >= -1:
		global1.third_color_number += 1
	var get_color3 = res_colors[global1.third_color_number]
	
	match get_color3 :
		"Black":
			third_sprite.modulate = Color(0, 0, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1
		"Brown":
			third_sprite.modulate = Color(0.65, 0.16, 0.16, 1)
			print("third color is ",get_color3)
			global1.third_digit = 10
		"Red":
			third_sprite.modulate = Color(1, 0, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 100
		"Orange":
			third_sprite.modulate = Color(1, 0.65, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1000
		"Yellow":
			third_sprite.modulate = Color(1, 1, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 10000
		"Green":
			third_sprite.modulate = Color(0, 1, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 100000
		"Blue":
			third_sprite.modulate = Color(0.25, 0.41, 0.88, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1000000
		"Violet":
			third_sprite.modulate = Color(0.93, 0.51, 0.93, 1)
			print("third color is ",get_color3)
			global1.third_digit = 10000000
		"Gray":
			third_sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("third color is ",get_color3)
			global1.third_digit = 100000000
		"White":
			third_sprite.modulate = Color(1, 1, 1, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1000000000
		"Gold":
			third_sprite.modulate = Color(1, 0.84, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 0.1
		"Silver":
			third_sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("third color is ",get_color3)
			global1.third_digit = 0.01


func _on_thirdown_pressed():
	if global1.third_color_number >= -1:
		global1.third_color_number -= 1
	var get_color3 = res_colors[global1.third_color_number]
	
	match get_color3 :
		"Black":
			third_sprite.modulate = Color(0, 0, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1
		"Brown":
			third_sprite.modulate = Color(0.65, 0.16, 0.16, 1)
			print("third color is ",get_color3)
			global1.third_digit = 10
		"Red":
			third_sprite.modulate = Color(1, 0, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 100
		"Orange":
			third_sprite.modulate = Color(1, 0.65, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1000
		"Yellow":
			third_sprite.modulate = Color(1, 1, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 10000
		"Green":
			third_sprite.modulate = Color(0, 1, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 100000
		"Blue":
			third_sprite.modulate = Color(0.25, 0.41, 0.88, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1000000
		"Violet":
			third_sprite.modulate = Color(0.93, 0.51, 0.93, 1)
			print("third color is ",get_color3)
			global1.third_digit = 10000000
		"Gray":
			third_sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("third color is ",get_color3)
			global1.third_digit = 100000000
		"White":
			third_sprite.modulate = Color(1, 1, 1, 1)
			print("third color is ",get_color3)
			global1.third_digit = 1000000000
		"Gold":
			third_sprite.modulate = Color(1, 0.84, 0, 1)
			print("third color is ",get_color3)
			global1.third_digit = 0.1
		"Silver":
			third_sprite.modulate = Color(0.75, 0.75, 0.75, 1)
			print("third color is ",get_color3)
			global1.third_digit = 0.01


func _on_calculate_pressed():
	var resistor = (int(str(global1.first_digit) + str(global1.second_digit))) * global1.third_digit
	
	if resistor == global1.correct_answer5:
		print("Resistor is ", resistor)
		print("You are correct")
		$resvalue.set_text("Resistor Value : "+str(resistor))
		#global2.load_scene()
	else:
		print("You are wrong")
		$resvalue.set_text("Resistor Value : "+str(resistor))
		print("Resistor is ", resistor)


func _on_submit_pressed():
	var resistor = (int(str(global1.first_digit) + str(global1.second_digit))) * global1.third_digit
	
	
	if resistor == global1.correct_answer5:
		print("Resistor is ", resistor)
		print("You are correct")
		global1.color_number = -1
		global1.second_color_number = -1
		global1.third_color_number = -1
		queue_free()
	else:
		print("You are wrong")
		$result.set_text("Your Color Combination is Wrong, try again!")
		print("Resistor is ", resistor)
