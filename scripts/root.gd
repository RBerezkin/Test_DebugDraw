extends MeshInstance


const DebugDraw = preload("res://scripts/debug_draw_3d.gd")

var rot_speed: float = 50.0
var debug_draw: DebugDraw3D


func _ready() -> void:
	debug_draw = DebugDraw.new(self)


func _physics_process(delta: float) -> void:
	rotate(Vector3.UP, deg2rad(rot_speed * delta))
	
	# first add all the shapes you need to draw
	debug_draw.add_vector(Vector3.ZERO, Vector3.UP, 0.05, Color.darkgreen, true)
	debug_draw.add_vector(Vector3.ZERO, Vector3.RIGHT, 0.05, Color.darkred, true)
	debug_draw.add_vector(Vector3.ZERO, Vector3.FORWARD, 0.05, Color.darkblue, true)
	debug_draw.add_sphere(Vector3.ZERO, 0.6, 16, 8, Color.gold)
	# then draw
	debug_draw.draw()
