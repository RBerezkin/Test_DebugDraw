extends MeshInstance


const DebugDraw = preload("res://scripts/debug_draw_3d.gd")

var rot_speed: float = 50.0
var debug_draw: DebugDraw3D


func _ready() -> void:
	debug_draw = DebugDraw.new(self)


func _physics_process(delta: float) -> void:
	rotate(Vector3.UP, deg2rad(rot_speed * delta))
	rotate(Vector3.RIGHT, deg2rad(rot_speed * delta))
	
	# first add all the shapes you need to draw
	debug_draw.add_vector(Vector3.ZERO, Vector3.UP, 0, Color.green)
	debug_draw.add_vector(Vector3.ZERO, Vector3.RIGHT, 0, Color.red)
	debug_draw.add_vector(Vector3.ZERO, Vector3.FORWARD, 0, Color.blue)
	debug_draw.add_cube(Vector3.ZERO, mesh.get_aabb().size)
	# then draw
	debug_draw.draw()
