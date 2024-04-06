extends Node3D
func _process(delta: float) -> void:
	rotate_sky()

func rotate_sky() -> void:
	var world_environment = $WorldEnvironment.get_environment()
	var world_Light = $DirectionalLight3D
	if world_environment != null:
		world_environment.sky_rotation.y += 0.0005
		
	#尝试 光源的旋转
	#if world_Light != null:
		#world_Light.y += 0.0005
