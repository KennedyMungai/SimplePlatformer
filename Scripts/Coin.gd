extends Node2D


var taken: bool = false;


func _on_Area2D_body_entered(body: Node) -> void:
	$AnimationPlayer.play("Die");
	$CoinSound.play();
	get_tree().call_group("GameState", "coin_up");


func die() -> void:
	queue_free();
