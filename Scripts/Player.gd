extends KinematicBody2D

var motion = Vector2(0,0);
var lives = 3;

const SPEED = 750;
const GRAVITY = 250;
const JUMP_SPEED = 3000;
const WORLD_LIMIT = 8000;

signal animate;


func _physics_process(delta: float) -> void:
	if(position.y > WORLD_LIMIT):
		end_game();
	
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
	
	
func end_game() -> void:
	get_tree().change_scene("res://Scenes/GameOver.tscn");


func hurt() ->void:
	motion.y -= JUMP_SPEED;
	lives -= 1;
	
	if(lives < 0):
		end_game();
