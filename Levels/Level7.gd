extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween1 = create_tween()
	var tween2 = create_tween()
	tween2.set_loops()
	tween1.set_loops()
	tween1.tween_property($Obstacle1, "rotation_degrees", $Obstacle1.rotation_degrees + Vector3(0, 0, 180), 60).as_relative()
	tween2.tween_property($Obstacle2, "rotation_degrees", $Obstacle2.rotation_degrees + Vector3(0,0, -180),60).as_relative()
	#tween2.tween_property($Obstacle2, "rotation", $Obstacle2.rotation + Vector3(0,0, 0), 2)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
