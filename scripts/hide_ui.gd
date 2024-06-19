extends Button
@onready var hide_touch = $"."

@onready var touch_screen_button_left = %left
@onready var touch_screen_button_right = %right
@onready var touch_screen_button_jump = %jump


func _ready():
	hide_touch.text = "Show controls"
	touch_screen_button_jump.visible = false
	touch_screen_button_left.visible = false
	touch_screen_button_right.visible = false

func _toggled(toggled_on):
	if toggled_on == true:
		hide_touch.text = "Hide controls"
		touch_screen_button_jump.visible = true
		touch_screen_button_left.visible = true
		touch_screen_button_right.visible = true
		
	else:
		hide_touch.text = "Show controls"
		touch_screen_button_jump.visible = false
		touch_screen_button_left.visible = false
		touch_screen_button_right.visible = false
