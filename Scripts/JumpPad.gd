extends Area2D




func _on_JumpPad_body_entered(body: Node) -> void:
	$AnimationPlayer.play("boost");
