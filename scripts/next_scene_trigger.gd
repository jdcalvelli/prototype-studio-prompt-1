extends Area2D

@export var nextScene : String
@export var desiredPlayerSide : GameManager.playerSide

func _ready():
	self.body_entered.connect(_go_to_scene)
	
func _go_to_scene(body : PhysicsBody2D):
	Events.triggerSceneChange.emit(nextScene)
	GameManager.currentPlayerSide = desiredPlayerSide
