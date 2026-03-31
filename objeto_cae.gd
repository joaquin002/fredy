extends Area2D

var velocidad:float=200.0

func _process(delta: float) -> void:
	position.y += velocidad * delta
	if position.y > 750:
		queue_free()
