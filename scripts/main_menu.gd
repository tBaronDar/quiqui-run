extends VBoxContainer

@onready var main_menu = %main_menu

func _on_resume_button_pressed():
	if main_menu.visible == true:
		main_menu.visible = false
	Engine.time_scale = 1
