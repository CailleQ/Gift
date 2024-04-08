extends Sprite3D
#@export var be_opened = 0
var state = preload("res://State/state.gd").new()
#待处理的碰撞函数
func operat():
	#处理碰撞函数
	#修改be_opened值
	if not state.cheast_status and Input.is_action_just_pressed("inter_action"):
		frame = 1
		
