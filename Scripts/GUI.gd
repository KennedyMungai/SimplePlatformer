extends CanvasLayer


func _ready() -> void:
	$Control/TextureRect/HBoxContainer/LivesDisplay.text = "3";


func update_lives(lives_left) -> void:
	$Control/TextureRect/HBoxContainer/LivesDisplay.text = str(lives_left);
