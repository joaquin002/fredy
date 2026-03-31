extends Area2D

@export var velocidad:int=200

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position = position.move_toward(get_parent().get_node(
		"personajePrincipal").position,velocidad * _delta)
