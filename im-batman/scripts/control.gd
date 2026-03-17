extends Node2D
@export var controlDataTable : theArray
@export var displaySprite : Sprite2D
@export var index : int

func _process(delta: float) -> void:
	display()

func display() -> void:
	displaySprite.texture = controlDataTable.array[index].image
