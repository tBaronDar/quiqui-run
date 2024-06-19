extends Area2D

@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	print("+100")
	body.collect(self,100)
	animation_player.play("collected")
