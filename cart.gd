class_name Cart
extends CharacterBody2D

const gravity = 20
const jump_force = -400

func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_A):
		velocity.x = -250
		$AnimatedSprite2D.flip_h = true
	elif Input.is_key_pressed(KEY_D):
		velocity.x = 250
		$AnimatedSprite2D.flip_h = false
	else:
		velocity.x = 0
		
	if Input.is_key_pressed(KEY_SPACE) and is_on_floor():
		velocity.y = jump_force
		
		
	velocity.y += gravity
	move_and_slide()
	
		
