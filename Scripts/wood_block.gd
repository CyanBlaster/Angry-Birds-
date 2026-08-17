extends RigidBody2D

var health = 3
@export var turn : int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotate(turn * PI)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if(health <= 0):
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name.begins_with("red")):
		print("ow")
		health -= 1
