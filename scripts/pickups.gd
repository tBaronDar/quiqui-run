extends Area2D
class_name Pickup

func _on_body_entered(body):
	body.collect(self)
	print("+50")
	
	queue_free()
