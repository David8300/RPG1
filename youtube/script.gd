extends CharacterBody2D

@onready var player=$".."
@onready var animation=$AnimatedSprite2D
const SPEED = 150.0



func _physics_process(delta):
	if Input.is_action_pressed("IZQUIERDA"):
		player.position.x -= SPEED*delta
		animation.play("izquierda")
	elif Input.is_action_pressed("DERECHA"):
		player.position.x += SPEED*delta
		animation.play("derecha")
	elif Input.is_action_pressed("ARRIBA"):
		player.position.y -= SPEED*delta
		animation.play("arriba")
	elif Input.is_action_pressed("ABAJO"):
		player.position.y += SPEED*delta
		animation.play("abajo")
	else:
		animation.stop()
	move_and_slide()
