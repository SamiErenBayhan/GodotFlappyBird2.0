extends CharacterBody2D
	
const GRAVITY = 1000.0
const JUMP_FORCE = -400.0
var game_started = false

func _unhandled_input(event):
	if event is InputEventKey and event.is_pressed() and not event.is_echo() and event.keycode == KEY_SPACE:
		velocity.y = JUMP_FORCE   
		#$JumpSound.play()

func _physics_process(delta):
	
	if not game_started:
		velocity = Vector2.ZERO
		return
	
	velocity.y += GRAVITY * delta
	
	if is_on_floor():#burada aşağı doğru giderken bi anda değerler durursa burayı zemin olarak yorumlar.
		get_tree().reload_current_scene()
	move_and_slide()
