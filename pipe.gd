extends Area2D

const speed = 200.0

func _physics_process(delta):
	
	position.x -= speed * delta
	if position.x < -950:
		queue_free() 

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Bird":
		get_tree().reload_current_scene()

func _on_score_area_body_entered(body: Node2D) -> void:
	if body.name == "Bird":
		if get_tree().current_scene.has_method("add_score"):
			get_tree().current_scene.add_score()
			
