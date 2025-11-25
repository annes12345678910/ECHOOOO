extends Area2D

var active: bool = false

func _ready():
	# Wait one physics frame before activating the spike
	await get_tree().process_frame
	active = true

func _on_area_entered(area: Area2D) -> void:
	print(area.name)
	if not active:
		return
	if area.name != "Player":
		return
	# Delay 0.2 seconds then quit
	await get_tree().create_timer(0.2).timeout
	Global.echos = 4
	get_tree().reload_current_scene()
