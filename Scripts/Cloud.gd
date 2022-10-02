extends Node2D


func _process(delta: float) -> void:
	if $Sprite/RayCast2D.is_colliding():
		fire();
		

func fire() -> void:
	$Sprite/RayCast2D.add_child(load("res://Scenes/Lightning.tscn").instance());