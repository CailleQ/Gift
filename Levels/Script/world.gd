extends Node3D
func _process(delta: float) -> void:
	rotate_sky()

func rotate_sky() -> void:
	var world_environment = $WorldEnvironment.get_environment()
	if world_environment != null:
		world_environment.sky_rotation.y += 0.0005
