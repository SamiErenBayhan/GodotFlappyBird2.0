extends CharacterBody2D
	
const GRAVITY = 1000.0
const JUMP_FORCE = -400.0
	
func _unhandled_input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE:
		velocity.y = JUMP_FORCE
		print("hey")              
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	
	move_and_slide()
