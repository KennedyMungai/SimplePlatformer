extends KinematicBody2D

var motion = Vector2(0,0);

const SPEED = 750;
const GRAVITY = 250;
const JUMP_SPEED = 3000;

signal animate;


func _physics_process(delta: float) -> void:
	apply_gravity();
	jump();
	move();
	animate();
		
	move_and_slide(motion, Vector2.UP);


func apply_gravity() -> void:
	if(!is_on_floor()):
		motion.y += GRAVITY;
	elif(is_on_ceiling()):
		motion.y = 1;
	else: 
		motion.y = 0;


func jump() -> void:
	if(Input.is_action_just_pressed("jump") and is_on_floor()):
		motion.y -= JUMP_SPEED;
	

func move() -> void:
	if(Input.is_action_pressed("left") and not Input.is_action_pressed("right")):
		motion.x = -SPEED;
	elif(Input.is_action_pressed("right") and not Input.is_action_pressed("left")):
		motion.x = SPEED;
	else: 
		motion.x = 0;


func animate() -> void:
	emit_signal("animate", motion);
	
	
