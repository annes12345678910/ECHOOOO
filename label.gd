extends Label



func _process(delta: float) -> void:
	text = "Echos: " + str(Global.echos)
