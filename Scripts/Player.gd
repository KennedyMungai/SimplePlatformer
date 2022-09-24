extends KinematicBody2D


var motion = Vector2(0,0);

const SPEED = 500;

func _physics_process(delta: float) -> void:
	if(Input.is_action_pressed("left")):
		motion.x = -500;
	elif(Input.is_action_pressed("right")):
		motion.x = 500;
	else: 
		motion.x = 0;
		
	move_and_slide(motion, Vector2.UP);
