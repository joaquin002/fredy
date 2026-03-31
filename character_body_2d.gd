extends CharacterBody2D


const SPEED = 300.0
var mirandoDerecha: bool = false


func _physics_process(_delta: float) -> void:

	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		mirandoDerecha = true
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		mirandoDerecha = false
	if Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
	if Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
	
	if velocity == Vector2.ZERO:
		$AnimatedSprite2D.stop()
	elif mirandoDerecha:
		$AnimatedSprite2D.play("derecha")
	else :
		$AnimatedSprite2D.play("izquierda")
	
	
	move_and_slide()
