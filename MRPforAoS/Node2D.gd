extends Node2D

var temp: int = -100

func _input(event):
	if event.is_action_pressed("temp"):
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position:x", 500+temp, 2.0)
		await(tween.finished)
		temp = temp * -1
