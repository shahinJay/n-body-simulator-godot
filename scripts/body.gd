extends Node2D

@onready var label = $Label


@onready var space = get_parent()

@export var pos:Vector2
@export var velo:Vector2
@export var mass = 10 * pow(10,2)

@onready var G = space.G
var accel

var dir
var dist

func _ready() -> void:
	
	space.bodies.append(self)
	global_position = pos

func _process(delta: float) -> void:
	if space.bodies:
		for body in space.bodies:
			if body != self:
				global_position = get_velo(delta, body)
	handle_labels()

func get_velo(delta, body):
	dir = (body.global_position - self.global_position).normalized()
	dist = body.global_position.distance_to(self.global_position)
	
	if dist > 0:
		accel = ( dir * body.mass * G) / (dist*dist)
		velo += accel * delta
		pos += velo * delta
	
	return pos

func handle_labels():
	if label:
		label.text = str("Mass: ", mass, "\nVelocity: %.2f" % velo.length())
		label.global_position = global_position + Vector2(10,10)
