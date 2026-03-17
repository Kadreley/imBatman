extends Node
var drawingData : DrawingData = preload("res://data/drawingData.tres")
@export var vboxContainer : VBoxContainer

func Return() -> void:
	queue_free()
	pass

func _ready() -> void:
	DisplayDrawingData()

func DisplayDrawingData() -> void:
	#clear the children
	var children : Array[Node]= vboxContainer.get_children()
	for i in range(children.size()):
		children[i].queue_free()
	
	#popular children
	for i in range(drawingData.array.size()):
		var texture = drawingData.array[i]
		var newTextureRect : TextureRect = TextureRect.new()
		vboxContainer.add_child(newTextureRect)
		
		newTextureRect.custom_minimum_size = Vector2(500.0, 500.0)
		newTextureRect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		newTextureRect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		newTextureRect.texture = texture
		
