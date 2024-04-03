extends Sprite3D
@export var be_opend = 0
@export var be_showed = 0

#待处理的碰撞函数
func open():
	#处理碰撞函数
	#修改be_opened值
	if not be_opend and Input.is_action_just_pressed("inter_action"):
		frame = 1
		be_opend =1 
	#处理礼物
		if not be_showed:
			DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/main.dialogue"),"this_is_a_node_title")
			be_showed = 1


func _physics_process(delta):
	open()
