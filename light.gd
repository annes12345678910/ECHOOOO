extends PointLight2D


func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_1:
			print("Skibidi")
			if Global.echos > 0:
				Global.echos -= 1
				$batecho.play()
				texture_scale = 7
				await get_tree().create_timer(4).timeout
				texture_scale = 1.32
