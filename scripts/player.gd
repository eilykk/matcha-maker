extends CharacterBody2D

@export var speed = 200
var animation = "idle"

func _physics_process(_delta):
	var direction = Input.get_vector("left","right","up","down")
	if !direction:
		$AnimatedSprite2D.play("idle")
	else:
		$AnimatedSprite2D.play(animation) 
	velocity = velocity.lerp(direction*speed,.05) 
	move_and_slide()

func _input(event): # walking animations
	if event.is_action_pressed("down"):
		animation = "walk_front"
	elif event.is_action_pressed("up"):
		animation = "walk_back"
	elif event.is_action_pressed("left"):
		animation = "walk_side"
	elif event.is_action_pressed("right"):
		animation = "walk_right"

	
