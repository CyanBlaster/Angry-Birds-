extends RigidBody2D

var health = 3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if(health <= 0):
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name == "red"):
		health -= 1
