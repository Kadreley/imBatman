extends Node
@export_group("Other Scenes")
@export var animationPlayer : AnimationPlayer
@export var portfolioScene : PackedScene
@export var aboutMeScene : PackedScene
var meShown : bool= false
var speech2Shown : bool = false

func SwitchToPortfolioScene() -> void:
	add_sibling(portfolioScene.instantiate())

func SwitchToAboutMeScene() -> void:
	add_sibling(aboutMeScene.instantiate())


func ShowMe() -> void:
	if(meShown): return
	animationPlayer.play("meAppear")
	meShown = true
	
func ShowSpeech2() -> void:
	if(speech2Shown): return
	animationPlayer.play("speech2")
	speech2Shown = true
