# Godot DebugDraw3D
Godot engine script for debug drawing in 3D-games
## Usage
```
extends Spatial

# preload class
const DebugDraw = preload("res://scripts/debug_draw/debug_draw_3d.gd")
var debug_draw: DebugDraw3D

func _ready() -> void:
  # create DebugDraw instance
  debug_draw = DebugDraw.new(self)

func _physics_process(delta: float) -> void:
  # first add all the shapes you need to draw
  debug_draw.add_vector(Vector3.ZERO, Vector3.UP, 0, Color.green)
  debug_draw.add_vector(Vector3.ZERO, Vector3.RIGHT, 0, Color.red)
  debug_draw.add_vector(Vector3.ZERO, Vector3.FORWARD, 0, Color.blue)
  
  # then call draw method
  debug_draw.draw()
```
## Supported primitives
### Ray
Draws line from point p1 to point p2
```
void add_ray(p1: Vector3, p2: Vector3, thickness: float = 0.0, color: = Color.white, fill: bool = false)
```
### Vector
Draws line from point p1 to point p2 with arrow in the end. Tip of the arrow points exactly to p2
```
void add_vector(p1: Vector3, p2: Vector3, thickness: float = 0.0, color: = Color.white, fill: bool = false)
```
### Cube
Draws cube with center in point p
```
void add_cube(p: Vector3, extents: Vector3, color: = Color.white, fill: bool = false)
```
### Sphere
Draws sphere with center in point p
```
void add_sphere(p: Vector3, r: float, lon: int = 16, lat: int = 8, color: = Color.white, fill: bool = false)
```
### Cone
Draws cone with base in p1
```
void add_cone(p1: Vector3, p2: Vector3, r1: float, r2: float, lon: int = 8, caps: bool = true, color: = Color.white, fill: bool = false)
```
### Cylinder
Shortcut for cone with equal radiuses
```
void add_cylinder(p1: Vector3, p2: Vector3, r: float, lon: int = 8, color: = Color.white, fill: bool = false)
```
