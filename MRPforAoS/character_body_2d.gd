extends CharacterBody2D

#script is just to apply gravity to box, same as character
var gravity_acceleration : float = 3840
var gravity_max : float = 1020

func _physics_process(delta) -> void:
	apply_gravity(delta)
	move_and_slide()

func apply_gravity(delta: float) -> void:
	var applied_gravity : float = 0
	if not is_on_floor() and velocity.y <= gravity_max:
		applied_gravity = gravity_acceleration * delta
	velocity.y += applied_gravity
