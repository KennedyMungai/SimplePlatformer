extends Node2D


var lives = 3;


func _ready() -> void:
	add_to_group("game_state");


func hurt() -> void:
	lives -= 1;
	$Player.hurt();
