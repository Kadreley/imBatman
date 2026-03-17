extends Control
class_name PortfolioContainer
@export var image : TextureRect
@export var title : Label
@export var description : Label
@export var role : Label
@export var link : Label
var data : PortfolioData = preload("res://data/portfolioData.tres")

func _ready() -> void:
	DisplayItem()

var index : int = 0
func DisplayItem() -> void:
	if(index < 0 or index >= data.array.size()): return
	var item : dataTable = data.array[index]
	image.texture = item.image
	title.text = item.title
	description.text = item.description
	role.text = item.role
	link.text = item.link
	
func NextItem() -> void:
	if(index + 1 >= data.array.size()):
		index = 0
	else: 
		index += 1
	DisplayItem()

func PreviousItem() -> void:
	if(index - 1 < 0):
		index = data.array.size() - 1
	else:
		index -= 1
	DisplayItem()
