extends Node2D




func _on_Area2D_body_entered(body: Node) -> void:
	$AnimationPlayer.play("Die");
	$CoinSound.play();


func die() -> void:
	queue_free();
