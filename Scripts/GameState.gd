extends Node2D


var lives = 3;


func hurt() -> void:
	lives -= 1;
	$Player.hurt();
