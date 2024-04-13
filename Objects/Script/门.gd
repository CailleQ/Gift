extends Sprite3D

@onready var colli = get_node("StaticBody3D/CollisionShape3D")
 
func operat():
	pass
func _physics_process(delta):
	var can_open = get_node("/root/State").can_open
	#print(can_open)
	if  can_open == 1:
		frame = 1
		colli.disabled = 1
