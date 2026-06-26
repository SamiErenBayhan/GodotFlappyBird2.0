extends Node2D

var pipe_scene = preload("res://pipe.tscn")
var game_started = false
var score = 0

func _ready() -> void:
	$Timer.stop()

func _process(delta):
	
	if not game_started and Input.is_action_just_pressed("ui_accept"):
		start_game()
		
	if game_started:
		$ParallaxBackground/ParallaxLayer.motion_offset.x -= 50 * delta#backgroundın da arkaya doğru gitmesini sağlıyoruz

func _on_timer_timeout():
	var new_pipe = pipe_scene.instantiate()
	var random_y = randf_range(-20.0, 110.0)
	new_pipe.position = Vector2(600, random_y)
	add_child(new_pipe)

func start_game():
	game_started = true
	$Timer.start()
	
	if has_node("Bird"):
		$Bird.game_started = true
		
func add_score():
	score += 1
	print(score)
	if has_node("ScoreLabel"):
		$ScoreLabel.text = str(score)
		
