extends Button

func _pressed():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
