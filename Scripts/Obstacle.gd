extends StaticBody3D
@export_color_no_alpha var color:Color

# Called when the node enters the scene tree for the first time.
func _ready():
	var material = StandardMaterial3D.new()
	material.albedo_color = color
	material.roughness = 0.8
	material.metallic = 0.2
	$ObstacleMesh.material_override = material
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
