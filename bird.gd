extends CharacterBody2D

# Motorun hazır yerçekimi ayarını direkt bilgisayardan çekiyoruz kral:
const GRAVITY = 980.0
const JUMP_FORCE = -350.0

func _physics_process(delta):
	# 1. Hazır yerçekimini kuşun dikey hızına (velocity.y) her kare otomatik ekle:
	velocity.y += GRAVITY * delta
	
	# 2. Zıplama kontrolü (Space'e basıldıysa):
	if Input.is_action_pressed("ui_accept"):
		velocity.y = JUMP_FORCE
		
	# 3. İŞTE MOTORUN EN BÜYÜK NİMETİ:
	# Bu fonksiyon kuşun hızına bakar, yerçekimini ve çarpmaları arkada otomatik hesaplayıp kuşu yürütür!
	move_and_slide()
