extends Node3D
@export_file var next_scene_path:String
var player_won:bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_rocket_body_entered(body):
	if $Rocket.dead or player_won:
		return
	if body.is_in_group("Finish"):
		player_won = true
		var particles:GPUParticles3D = find_child("Finish").find_child("GPUParticles3D")
		particles.emitting = true
		var finishSound:AudioStreamPlayer =  find_child("Finish").find_child("AudioStreamPlayer")
		finishSound.play()
		await get_tree().create_timer(2.0).timeout
		
		get_tree().change_scene_to_file(next_scene_path)
	pass # Replace with function body.
