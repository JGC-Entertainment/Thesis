extends Node

var saved_scene

func switch_scene( temp_scene ):
	# save scene and remove it from the tree
	saved_scene = get_tree().get_current_scene()
	get_tree().get_root().remove_child( saved_scene )
	# instance and add temporary scene as current scene
	var new_scene = load(temp_scene).instance()
	get_tree().get_root().add_child( new_scene )
	get_tree().set_current_scene( new_scene )

func load_scene():
	if saved_scene != null:
		# free temporary scene
		get_tree().get_current_scene().queue_free()
		# add saved scene back to the tree
		get_tree().get_root().add_child(saved_scene)
		saved_scene = null
