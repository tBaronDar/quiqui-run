extends CanvasLayer
class_name UI


@onready var score_label = %score_label
@onready var message_container = $Control/MarginContainer/message_container

var score =0:
	set(new_score):
		score = new_score
		_update_score_label()
		if score > 200 :
			if message_container.visible != true:
				message_container.visible =true
				Engine.time_scale = 0
func _ready():
	_update_score_label()

func _update_score_label():
	score_label.text ="nostimies: "+str(score)

func _on_collected(pickup, value):
	if pickup:
		score += value



	
