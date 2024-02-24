extends Node2D

var segments = [
	preload("res://segments/b.tscn"),
	preload("res://segments/c.tscn")
]

var speed = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_segments(0, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	for area in $Areas.get_children():
		area.position.x -= speed * delta
		
func spawn_segments(x,y):
	var seg = segments[randi() % len(segments)].instantiate()
	seg.position = Vector2(x, y)
	$Areas.add_child(seg)
