extends Area2D

var velocidad = Vector2(250,0)

func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	position += velocidad * delta
	if position.y > 750 or position.y < -30 or \
	position.x > 1350 or position.x < -30:
		queue_free()
