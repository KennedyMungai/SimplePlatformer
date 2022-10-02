extends Node2D


func _ready() -> void:
	set_as_toplevel(true);
	global_position = get_parent().global_position;
