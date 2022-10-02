extends Node2D


var lives = 3;


func _ready() -> void:
	add_to_group("GameState");


func hurt() -> void:
	lives -= 1;
	$Player.hurt();

	if(lives < 0):
		end_game();
