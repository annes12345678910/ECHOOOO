extends Node2D


func _ready() -> void:
	print_tree()

	print("Meow")
	get_tree().set_auto_accept_quit(false)

func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		get_tree().quit() # default behavior
