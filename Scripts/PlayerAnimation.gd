extends AnimatedSprite



func _on_Player_animate(motion) -> void:
	if(motion.y < 0):
		$PlayerAnimation.play("jump");
	elif(motion.x > 0):
		$PlayerAnimation.play("walk");
		$PlayerAnimation.flip_h = false;
	elif(motion.x < 0):
		$PlayerAnimation.play("walk");
		$PlayerAnimation.flip_h = true;
	else:
		$PlayerAnimation.play("idle");
