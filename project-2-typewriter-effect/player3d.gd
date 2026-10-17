extends MeshInstance3D

var movement_speed = 1
var sprint_speed = 2.5
var normal_speed = 1
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("3D_sprint"):
		movement_speed=sprint_speed
	if Input.is_action_just_released("3D_sprint"):
		movement_speed=normal_speed
	if Input.is_action_pressed("3D_move_right"):
		position = position + delta*movement_speed*Vector3(1,0,0)
	if Input.is_action_pressed("3D_move_left"):
		position = position + delta*movement_speed*Vector3(-1,0,0)
	if Input.is_action_pressed("3D_move_forward"):
		position = position + delta*movement_speed*Vector3(0,0,-1)
	if Input.is_action_pressed("3D_move_backward"):
		position = position + delta*movement_speed*Vector3(0,0,1)
	if Input.is_action_pressed("3D_move_up"):
		position = position + delta*movement_speed*Vector3(0,1,0)
	if Input.is_action_pressed("3D_move_down"):
		position = position + delta*movement_speed*Vector3(0,-1,0)
