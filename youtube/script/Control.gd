extends Control
#
#
#var numero_dialogo = 0
#var velocidad = 0.2
#var control = false
#var macro = false
#var tween = create_tween()
#@onready var texto = $RichTextLabel
#
#func _ready():
	#set_process(false)
#
#func _process(delta):
	#if Input.is_action_just_pressed("tecla_f"):
		#numero_dialogo += 1
		#print(numero_dialogo)
		#ingresar_dialogo()
		#set_process(false)
#
#func ingresar_dialogo():
	#var tween = create_tween()
	#if numero_dialogo < Main.dialogo_objeto.size():
		#texto.text = Main.dialogo_objeto[numero_dialogo]
		#texto.visible_ratio = 0.0
		#var duracion = velocidad * Main.dialogo_objeto[numero_dialogo].length()
		#tween.tween_property(texto,"visible_ratio",1.00,velocidad * duracion)
		#tween.tween_callback(_final)
	#else:
		#control = false
		#$"../../CharacterBody2D".mover = true
		#$"../../CharacterBody2D".objeto = false
		#$"..".visible = false
		#numero_dialogo = 0
	#
#func _final():
	#set_process(true)
