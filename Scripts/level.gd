extends Node2D

var victory = preload("res://Scenes/victory_screen.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(_delta: float) -> void:
	#print(global.pigs)
	if(global.pigs <= 0):
		var instance = victory.instantiate()
		instance.position = position
		get_tree().current_scene.add_child(instance)
