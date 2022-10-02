extends Area2D



func _on_Hazards_body_entered(body: Node) -> void:
#	if(body.has_method("hurt")):
#		body.hurt();
	get_tree().call_group("GameState", "hurt");
