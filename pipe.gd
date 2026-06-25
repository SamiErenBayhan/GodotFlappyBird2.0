extends Area2D

const speed = 200.0

func _physics_process(delta):
	
	position.x -= speed * delta
	if position.x < -950:
		queue_free() 
