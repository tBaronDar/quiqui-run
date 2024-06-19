extends Button

@onready var main_menu = %main_menu


func _on_pressed():
	if main_menu.visible != true:
		main_menu.visible =true
	Engine.time_scale = 0
