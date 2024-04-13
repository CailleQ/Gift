extends Sprite3D
@onready var actionable = get_node("./Actionable")

func _ready():
	switch_dialog()
	

func operat():
	#处理碰撞函数
	#修改be_opened值
	frame = 1
	pass
	
func switch_dialog() :
	print(name)
	if name == "宝箱A":
		actionable.dialogue_start = "宝箱A"
	else:
		actionable.dialogue_start = "宝箱B"
