extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Area2D.body_entered.connect(_on_body_entered)
	$Area2D.body_exited.connect(_on_body_exited)


func _on_body_entered(body : PhysicsBody2D):
	print(body.name)
	Events.enteredUmbrella.emit()
	
func _on_body_exited(body : PhysicsBody2D):
	print(body.name + " exited")
	Events.exitedUmbrella.emit()
