extends CharacterBody2D

@export var speed = 100 # Velocità di movimento del personaggio

func _ready():
	pass 

func _process(delta):
	var direzione = Vector2()
	if Input.is_action_pressed("move_right"):
		move_local_x(+1)
	if Input.is_action_pressed("move_left"):
		move_local_x(-1)
	if Input.is_action_pressed("move_forward"):
		move_local_y(-1)
	if Input.is_action_pressed("move_back"):
		move_local_y(+1)
	velocity = direzione * speed

func _physics_process(delta):
	_process(delta)
	move_and_slide()
