extends Node
var transitionManagerPrefab : PackedScene = preload("res://scenes/transitions.tscn")
var transitionManager : TransitionManager
var currentItem : Clickable = null

func _ready() -> void:
	transitionManager = transitionManagerPrefab.instantiate() as TransitionManager
	add_sibling.call_deferred(transitionManager)
	transitionManager.FadeOut.call_deferred()
	
func _input(event: InputEvent) -> void:
		if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			if(currentItem != null): currentItem.Click.emit()
	
