extends Area2D



func _on_Hazards_body_entered(body: Node) -> void:
	body.hurt();
