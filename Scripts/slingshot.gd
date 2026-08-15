extends Node2D


@export var trajectory : Sprite2D
var X = 1000;
var Y = -500;
var Z = 100;
var red = preload("res://Scenes/red_bird.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		trajectory.rotation_degrees = (rad_to_deg(tan(Y/X)))
		print(trajectory.rotation_degrees)
	
		X += delta * Z
		Y -= delta * Z
	if Input.is_action_pressed("ui_down"):
		trajectory.rotation_degrees = (rad_to_deg(tan(Y/X)))
		print(trajectory.rotation_degrees)
		X -= delta * Z
		Y += delta * Z
	
	if Input.is_action_just_pressed("launch"):
		var instance = red.instantiate()
		instance.velocity.x = X;
		instance.velocity.y = Y;
		instance.position.y = position.y - 45
		instance.position.x = position.x
		instance.name = "Red"
		get_tree().current_scene.add_child(instance)
