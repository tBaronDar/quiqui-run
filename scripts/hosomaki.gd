extends Area2D

@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	body.collect(self, 50)
	print("+50")
	animation_player.play("collected")
