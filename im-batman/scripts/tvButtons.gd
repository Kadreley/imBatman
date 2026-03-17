extends Sprite2D
@export var portfolioContainer : PortfolioContainer

func Return() -> void:
	get_parent().queue_free()
	pass
	
func NextItem() -> void:
	portfolioContainer.NextItem()
	pass
func PrevItem() -> void:
	portfolioContainer.PreviousItem()
	pass
