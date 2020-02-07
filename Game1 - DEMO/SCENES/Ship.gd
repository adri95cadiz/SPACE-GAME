extends Area2D

onready var root_node = get_parent()
onready var Shot = root_node.get_node("Shot")
export (int) var Speed
var movement = Vector2()

func _ready():
	pass

func _process(delta):
	
	movement = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		movement.x = 1
	if Input.is_action_pressed("ui_left"):
		movement.x = -1
	if Input.is_action_just_pressed("ui_up"):
		Shot.shoot()
		
	if movement.length() > 0:
		movement = movement.normalized() * Speed
		
	position += movement * delta 
