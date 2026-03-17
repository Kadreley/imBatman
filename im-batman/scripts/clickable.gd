extends Area2D
class_name Clickable
signal Click

func _mouse_enter() -> void:
	InteractionManager.currentItem = self
	print(InteractionManager.currentItem)

func _mouse_exit() -> void:
	InteractionManager.currentItem = null
	print(InteractionManager.currentItem)
