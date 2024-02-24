extends Node2D


@onready var vis = $VisibleOnScreenNotifier2D

func _on_visible_on_screen_notifier_2d_screen_exited():
	self.queue_free()
