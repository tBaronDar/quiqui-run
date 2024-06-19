extends Node

var score = 0


#@onready var score_label = $score_label


func add_points(sushi_value):
	score+=sushi_value
	#score_label.text = "nostimies: "+str(score)
	print(score)

