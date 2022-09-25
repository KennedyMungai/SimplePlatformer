extends KinematicBody2D


var motion = Vector2(0,0);

const SPEED = 500;
const GRAVITY = 500;

func _physics_process(delta: float) -> void:
	apply_gravity();
	
	if(Input.is_action_pressed("left") and not Input.is_action_pressed("right")):
		motion.x = -500;
	elif(Input.is_action_pressed("right") and not Input.is_action_pressed("left")):
		motion.x = 500;
	else: 
		motion.x = 0;
		
	move_and_slide(motion, Vector2.UP);


func apply_gravity() -> void:
	if(!is_on_floor()):
		motion.y += GRAVITY;
	else: 
		motion.y = 0;
