extends RigidBody2D


@export var turn : int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotate(turn * PI)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
