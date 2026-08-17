extends Node

var play = false
var pigs = 0
var level = 0

func _process(_delta: float) -> void:
	if(play):
		global.level += 1
		if(level == 1):
			print("Level 1")
			get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
		elif(level == 2):
			print("Level 2")
			get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
		play = false
