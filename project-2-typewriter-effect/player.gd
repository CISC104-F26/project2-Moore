extends Sprite2D

var move_speed = 100
var normal_speed = 100
var sprint_speed = 250
var scale_speed = 3
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("sprint"):
		move_speed=sprint_speed
	if Input.is_action_just_released("sprint"):
		move_speed=normal_speed
	if Input.is_action_pressed("move_right"):
		position = position + delta*move_speed*Vector2(1,0)
	if Input.is_action_pressed("move_left"):
		position = position + delta*move_speed*Vector2(-1,0)
	if Input.is_action_pressed("move_up"):
		position = position + delta*move_speed*Vector2(0,-1)
	if Input.is_action_pressed("move_down"):
		position = position + delta*move_speed*Vector2(0,1)
	if Input.is_action_pressed("big"):
		scale = scale + scale_speed
	if Input.is_action_pressed("not_big"):
		scale = scale - scale_speed

func _get_global_mouse_position():
		if Input.is_action_just_pressed("teleport"):
			position=get_global_mouse_position()
