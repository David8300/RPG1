extends Node2D

@onready var casa=$"."
var mundo = preload("res://escenas/mundo.tscn").instantiate()
var player=preload("res://escenas/player_1.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	casa.add_child(mundo)
	$Button.pressed.connect(self._on_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass


func _on_button_pressed():
	get_tree().add_child(player)  
	get_tree().get_nodes_in_group(mundo)[0].queue_free()
