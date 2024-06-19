extends Area2D

@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	print("+75")
	body.collect(self,75)
	animation_player.play("collected")
