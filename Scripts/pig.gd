extends RigidBody2D

@export var death : AudioStreamPlayer
var dead = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global.pigs += 1
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if(death.finished && dead):
		global.pigs -= 1;
		#print(global.pigs)
		queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name.begins_with("red")):
		dead = true
		death.play()
