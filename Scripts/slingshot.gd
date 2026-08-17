extends Node2D


@export var trajectory : Sprite2D
var X = 1000;
var Y = -500;
var Z = 100;
var red = preload("res://Scenes/red_bird.tscn")

func _ready() -> void:
	pass


func _draw():
	draw_line(Vector2(1.5, 1.0), Vector2(1.5, 600.0), Color.GREEN, 1.0)

func _process(delta: float) -> void:
	queue_redraw()
	if Input.is_action_pressed("ui_up"):
		@warning_ignore("integer_division")
		trajectory.rotation_degrees = (rad_to_deg(tan(Y/X)))
		#print(trajectory.rotation_degrees)
		X += delta * Z
		Y -= delta * Z
	if Input.is_action_pressed("ui_down"):
		trajectory.rotation_degrees = (rad_to_deg(tan(Y/X)))
		#print(trajectory.rotation_degrees)
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
