extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween1 = create_tween()
	var tween2 = create_tween()
	tween2.set_loops()
	var tween3 = create_tween()
	tween3.set_loops()
	var tween4 = create_tween()
	tween4.set_loops()
	tween1.set_loops()
	tween1.tween_property($Obstacle1, "position", $Obstacle1.position + Vector3(0, 4, 0), 2)
	tween1.tween_property($Obstacle1, "position", $Obstacle1.position + Vector3(0, -4, 0), 2)
	tween2.tween_property($Obstacle2, "position", $Obstacle2.position + Vector3(0, -3, 0), 1)
	tween2.tween_property($Obstacle2, "position", $Obstacle2.position + Vector3(0, 3, 0), 1)
	tween3.tween_property($Obstacle3, "position", $Obstacle3.position + Vector3(0, 3, 0), 2)
	tween3.tween_property($Obstacle3, "position", $Obstacle3.position + Vector3(0, -3, 0),2)
	tween4.tween_property($Obstacle4, "position", $Obstacle4.position + Vector3(0, 0, 2), 2)
	tween4.tween_property($Obstacle4, "position", $Obstacle4.position + Vector3(0, 0, 0), 2)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
