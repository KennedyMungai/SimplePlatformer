extends CanvasLayer


func _ready() -> void:
	$Control/TextureRect/HBoxContainer/LivesDisplay.text = "3";


func update_gui(lives_left, coins_collected) -> void:
	$Control/TextureRect/HBoxContainer/LivesDisplay.text = str(lives_left);
	$Control/TextureRect/HBoxContainer/CoinsDisplay.text = str(coins_collected);
