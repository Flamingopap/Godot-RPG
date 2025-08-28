extends CharacterBody2D

const SPEED = 100.0
const ACCEL = 2.0

var input: Vector2

func get_input():
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("backward") - Input.get_action_strength("forward")
	return input.normalized()

func _process(delta):
	var playerInput =get_input()
	
	velocity = lerp(velocity, playerInput * SPEED, delta * ACCEL)
	
	move_and_slide()
