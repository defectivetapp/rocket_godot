extends RigidBody3D
var rotateSpeed = 100
var rocketForce = 400

var dead = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dead:
		return
	if Input.is_action_pressed("move_up"):
		$GPUParticles3D.emitting = true
		apply_force(Vector3(-sin(rotation.z),cos(rotation.z),0)*rocketForce*delta)
		if !$AudioStreamPlayer.playing:
			$AudioStreamPlayer.play()
	else: 
		$GPUParticles3D.emitting = false
		$AudioStreamPlayer.stop()

func _physics_process(delta):
	var angle = Input.get_action_strength("rotate_left") - Input.get_action_strength("rotate_right")
	rotation_degrees.z+=angle*rotateSpeed*delta
#	var angle = Input.get_action_strength("rotate_left") - Input.get_action_strength("rotate_right")
#	rotation_degrees.z+=angle*rotateSpeed*delta


func _on_body_entered(body):
	if dead: return
	if body.is_in_group("Obstacle"):
		inertia.z = 0
		dead = true
		$AudioStreamPlayer.stream = load("res://Sounds/death-sharedassets0.assets-15.wav")
		$AudioStreamPlayer.volume_db = -10.0
		$AudioStreamPlayer.play()
		$Explosion.emitting = true
		$GPUParticles3D.emitting = false
		await get_tree().create_timer(2).timeout	
		get_tree().reload_current_scene()	
	pass # Replace with function body.
