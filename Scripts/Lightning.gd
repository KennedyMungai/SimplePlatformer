extends Node2D


func _ready() -> void:
	set_as_toplevel(true);
	global_position = get_parent().global_position;


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free();
