extends Control
class_name TransitionManager
@export var animationPlayer : AnimationPlayer

func FadeIn() -> void:
	animationPlayer.play("fadeIn")

func FadeOut() -> void:
	animationPlayer.play("fadeOut")
