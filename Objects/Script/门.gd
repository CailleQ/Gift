extends Sprite3D
var be_opened = 0
@onready var colli = get_node("StaticBody3D/CollisionShape3D")

func operat():
	if not be_opened and Input.is_action_just_pressed("inter_action"):
		frame = 1
		be_opened =1 
		colli.disabled = 1
