extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween1 = create_tween()
	var tween2 = create_tween()
	tween2.set_loops()
	tween1.set_loops()
	tween1.tween_property($Obstacle1, "position", $Obstacle1.position + Vector3(-19, 0, 0), 3)
	tween1.tween_property($Obstacle1, "position", $Obstacle1.position + Vector3(0, 0, 0), 3)
	tween2.tween_property($Obstacle2, "position", $Obstacle2.position + Vector3(0, 4, 0),2.5)
	tween2.tween_property($Obstacle2, "position", $Obstacle2.position + Vector3(0, 0, 0), 2.5)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
