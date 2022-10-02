extends CanvasLayer


func _ready() -> void:
	$Control/TextureRect/HBoxContainer/LivesDisplay.text = "3";


func hurt(lives_left) -> void:
	$Control/TextureRect/HBoxContainer/LivesDisplay.text = str(lives_left);
