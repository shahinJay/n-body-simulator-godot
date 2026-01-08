extends Node2D

@onready var camera = $Camera2D
var bodies = []

@export var G = 800

func _ready() -> void:
	print(bodies)

func _process(_delta: float) -> void:
	
	camera.global_position = bodies[0].global_position
	
	if Input.is_action_pressed("ui_left") and camera.zoom > Vector2(0.2,0.2):
		camera.zoom -= Vector2(0.05,0.05)
	elif Input.is_action_pressed("ui_right")  and camera.zoom < Vector2(6,6):
		camera.zoom += Vector2(0.05,0.05)
