extends Sprite2D

var isHovered : bool = false

func _on_area_2d_mouse_entered() -> void:
	isHovered = true
	print("imBatman")
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	if isHovered == true:
		if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			print("whaaa")
			get_tree().change_scene_to_file("res://scenes/AbtMe.tscn")
	

func _on_area_2d_mouse_exited() -> void:
	isHovered = false
