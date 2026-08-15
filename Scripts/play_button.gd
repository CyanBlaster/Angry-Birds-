extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_2d_mouse_entered() -> void:
	if(Input.is_action_just_pressed("click")):
		print("a")
		get_tree().change_scene_to_file("res://Scenes/level_1.tscn")


func _on_area_2d_mouse_shape_entered(_shape_idx: int) -> void:
	if(Input.is_action_just_pressed("click")):
		print("a")
		


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if(Input.is_action_just_pressed("click")):
		get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
