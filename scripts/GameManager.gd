extends Node

enum playerSide {
	RIGHT,
	LEFT,
}

var currentPlayerSide : int = playerSide.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready():
	Events.triggerSceneChange.connect(_on_scene_change)
	
func _on_scene_change(scenePath : String):
	get_tree().change_scene_to_file(scenePath)
