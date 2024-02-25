extends Node2D

var floor = preload("res://Segments/main.tscn")

@onready var mainFloor = $floor1

var speed = 200
var tick = 0
var max = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(max):
		var floor_scene = floor.instantiate()
		floor_scene.position = Vector2(1000 * (i + 1), -16)
		$Areas.add_child(floor_scene)
	#spawn_segments(0, 0)
	
#func _process(delta):
	#spawn_segments(750, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _physics_process(delta):
	#for area in $Areas.get_children():
		#area.position.x -= speed * delta

#func spawn_segments(x,y):
	#var seg = segments[randi() % len(segments)].instantiate()
	#seg.position = Vector2(x, y)
	#$Areas.add_child(seg)
	#
