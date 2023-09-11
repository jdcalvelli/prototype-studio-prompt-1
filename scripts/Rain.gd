extends Node2D

func _ready():
	Events.enteredUmbrella.connect(_on_umbrella_entered)
	Events.exitedUmbrella.connect(_on_umbrella_exited)
	$ThunderAudio.stream_paused = true
	$RainAudio.stream_paused = true
	
func _on_umbrella_entered():
	$CPUParticles2D.visible = true
	$ThunderAudio.stream_paused = false
	$RainAudio.stream_paused = false

func _on_umbrella_exited():
	$CPUParticles2D.visible = false
	$ThunderAudio.stream_paused = true
	$RainAudio.stream_paused = true
