extends Node
var currentItem : Clickable = null

func _input(event: InputEvent) -> void:
		if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			if(currentItem != null): currentItem.Click.emit()
	
