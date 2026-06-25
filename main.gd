extends Node2D

var pipe_scene = preload("res://pipe.tscn")

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout():
	var new_pipe = pipe_scene.instantiate()
	var random_y = randf_range(-20.0, 110.0)
	new_pipe.position = Vector2(1050, random_y)
	add_child(new_pipe)
