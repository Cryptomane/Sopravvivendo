extends Node2D

func _ready():
	pass 

func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		move_local_x(+1)
	if Input.is_action_pressed("move_left"):
		move_local_x(-1)
	if Input.is_action_pressed("move_forward"):
		move_local_y(-1)
	if Input.is_action_pressed("move_back"):
		move_local_y(+1)

