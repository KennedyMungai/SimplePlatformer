extends Node2D


var lives = 3;


func _ready() -> void:
	add_to_group("GameState");


func hurt() -> void:
	lives -= 1;
	$Player.hurt();
	get_tree().call_group("GUI", "hurt", lives);

	if(lives < 0):
		end_game();


func end_game() -> void:
	get_tree().change_scene("res://Scenes/GameOver.tscn");
