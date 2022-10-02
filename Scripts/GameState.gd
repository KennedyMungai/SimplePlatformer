extends Node2D


var lives = 3;
var coins = 0;


func _ready() -> void:
	add_to_group("GameState");
	update_GUI(); 


func hurt() -> void:
	lives -= 1;
	$Player.hurt();
	update_GUI();

	if(lives < 0):
		end_game();


func update_GUI() -> void:
	get_tree().call_group("GUI", "update_lives", lives);	


func end_game() -> void:
	get_tree().change_scene("res://Scenes/GameOver.tscn");


func coin_up() -> void:
	coins += 1;
