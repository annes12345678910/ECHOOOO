extends Area2D


func _on_area_entered(area: Area2D) -> void:
	await get_tree().create_timer(0.05).timeout
	visible = false
	$CollisionShape2D.disabled = true
	Global.echos += 1
