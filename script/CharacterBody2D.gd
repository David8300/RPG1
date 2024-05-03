extends CharacterBody2D
#
#
const velocidad = 150
#@onready var player = $".."
@onready var animacion = $AnimatedSprite2D
#var mover = true
#var objeto = false
#
#func _physics_process(_delta):
	#if mover == true:
		#if Input.is_action_just_pressed("tecla_f"):
			#if objeto == true:
				#$"../macro".visible = true
				#Main._dialogo()
				#$"../macro/Control".ingresar_dialogo()
				#mover = false
		#if Input.is_action_pressed("IZQUIERDA"):
			#animacion.play("izquierda")
			#$detec_obj/CollisionShape2D.rotation_degrees = 90
			#player.position.x -= velocidad * _delta
		#elif Input.is_action_pressed("DERECHA"):
			#$detec_obj/CollisionShape2D.rotation_degrees = 270
			#player.position.x += velocidad * _delta
			#animacion.play("derecha")
		#elif Input.is_action_pressed("ARRIBA"):
			#$detec_obj/CollisionShape2D.rotation_degrees = 180
			#player.position.y -= velocidad * _delta
			#animacion.play("arriba")
		#elif Input.is_action_pressed("ABAJO"):
			#$detec_obj/CollisionShape2D.rotation_degrees = 0
			#player.position.y += velocidad * _delta
			#animacion.play("abajo")
		#else:
			#animacion.stop()
		#move_and_slide()
#
#func _on_detec_obj_area_entered(area):
	#$"../macro/Control/Label".text = str(area.name)
	#if area.is_in_group("objeto"):
		#Main.nombre_objeto = area.name
		#objeto = true
#
#
#func _on_detec_obj_area_exited(area):
	#if area.is_in_group("objeto"):
		#objeto = false

#extends CharacterBody2D

@onready var player=$".."
#@onready var animation=$AnimatedSprite2D
const SPEED = 150.0



#func _physics_process(delta):
	#if Input.is_action_pressed("IZQUIERDA"):
		#player.position.x -= SPEED*delta
		#animation.play("izquierda")
	#if Input.is_action_pressed("DERECHA"):
		#player.position.x += SPEED*delta
		#animation.play("derecha")
	#if Input.is_action_pressed("ARRIBA"):
		#player.position.y -= SPEED*delta
		#animation.play("arriba")
	#if Input.is_action_pressed("ABAJO"):
		#player.position.y += SPEED*delta
		#animation.play("abajo")
	#else:
		#animation.stop()
	#move_and_slide()


func _physics_process(_delta):
	#if mover == true:
		#if Input.is_action_just_pressed("tecla_f"):
			#if objeto == true:
				#$"../macro".visible = true
				#Main._dialogo()
				#$"../macro/Control".ingresar_dialogo()
				#mover = false
	if Input.is_action_pressed("IZQUIERDA"):
		animacion.play("izquierda")
		#$detec_obj/CollisionShape2D.rotation_degrees = 90
		player.position.x -= velocidad * _delta
	elif Input.is_action_pressed("DERECHA"):
		#$detec_obj/CollisionShape2D.rotation_degrees = 270
		player.position.x += velocidad * _delta
		animacion.play("derecha")
	elif Input.is_action_pressed("ARRIBA"):
		#$detec_obj/CollisionShape2D.rotation_degrees = 180
		player.position.y -= velocidad * _delta
		animacion.play("arriba")
	elif Input.is_action_pressed("ABAJO"):
		#$detec_obj/CollisionShape2D.rotation_degrees = 0
		player.position.y += velocidad * _delta
		animacion.play("abajo")
	else:
		animacion.stop()
		move_and_slide()
		
		
