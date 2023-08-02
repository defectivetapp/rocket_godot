extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = create_tween()
	tween.set_loops()
	tween.tween_property($Rocket, "position", $Rocket.position + Vector3(0, 1, 0), 1)
	tween.tween_property($Rocket, "position", $Rocket.position + Vector3(0, 0, 0), 1)
	$Rocket/GPUParticles3D.emitting = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_up"):
		get_tree().change_scene_to_file("res://Levels/level1.tscn")
	pass
