extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
#var launched = false
@export var sprite : Sprite2D
@export var sprite2 : Sprite2D
@export var battle_cry : AudioStreamPlayer
@export var hurt_cry : AudioStreamPlayer
var timer = 5
var time = false


func _ready() -> void:
	name = "red"
	sprite.hide()
	#sprite2.hide()
	battle_cry.play()
	sprite2.show()
	print(velocity)
func _physics_process(delta: float) -> void:
	if not is_on_floor(): 
		velocity += get_gravity() * delta
	if(time):
		timer -= delta
		if(timer <= 0):
			queue_free()
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if(!body.name.begins_with("Slingshot") && !body.name.begins_with("red") && !body.name.begins_with("Trajectory")):
		print(body)
		hurt_cry.play()
		sprite.show()
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.x = move_toward(velocity.y, 0, SPEED)
		time = true
