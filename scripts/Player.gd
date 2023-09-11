extends CharacterBody2D

@export var moveSpeed : int

var locationOptions : Array = [Vector2(-628, 152), Vector2(628, 152)]

func _ready():
	$AudioStreamPlayer.stream_paused = true
	position = locationOptions[GameManager.currentPlayerSide]

func _physics_process(delta):
	if !Input.is_anything_pressed():
		$AnimatedSprite2D.play("idle")
		$AudioStreamPlayer.stream_paused = true
	
	if Input.is_action_pressed("move_right"):
		move_and_collide(Vector2.RIGHT * moveSpeed)
		$AnimatedSprite2D.scale.x = 1
		$AnimatedSprite2D.play("walk")
		$AudioStreamPlayer.stream_paused = false
	
	if Input.is_action_pressed("move_left"):
		move_and_collide(Vector2.LEFT * moveSpeed)
		$AnimatedSprite2D.scale.x = -1
		$AnimatedSprite2D.play("walk")
		$AudioStreamPlayer.stream_paused = false
