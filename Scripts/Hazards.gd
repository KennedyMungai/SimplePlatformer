extends Area2D



func _on_Hazards_body_entered(body: Node) -> void:
	get_tree().call_group("GameState", "hurt");
