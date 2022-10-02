extends Node2D

const SPEED = 200;


func _ready() -> void:
	set_as_toplevel(true);
	global_position = get_parent().global_position;


func _process(delta: float) -> void:
	position.y += SPEED * delta;
	manage_collision();


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free();
