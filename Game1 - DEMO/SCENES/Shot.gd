extends Area2D

export (int) var Speed

onready var root_node = get_parent()
onready var Ship = root_node.get_node("Ship")
onready var Gun = root_node.get_node("Ship/AnimatedSprite")

func _ready():
	pass

func _process(delta):
	position.y -= Speed * delta 

func shoot():
	position.x = Gun.position.x-376+Ship.position.x
	position.y = Gun.position.y-765+Ship.position.y
