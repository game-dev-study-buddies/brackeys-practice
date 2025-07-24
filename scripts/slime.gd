extends Node2D

const SPEED = 60

# negative for left / positive for right
var direction = 1
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		#turn()
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		#turn()
		direction = 1
		animated_sprite.flip_h = false
	
	#if ray_cast_right.is_colliding() or ray_cast_left.is_colliding():
		#turn()
		
	position.x += direction * SPEED * delta

#func turn():
	#direction = -1 if direction == 1 else 1
	#animated_sprite.flip_h = false if animated_sprite.flip_h == true else true
