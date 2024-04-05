extends Sprite3D
@export var be_opend = 0

#待处理的碰撞函数
func operat():
	#处理碰撞函数
	#修改be_opened值
	if not be_opend and Input.is_action_just_pressed("inter_action"):
		frame = 1
		be_opend =1 
		#处理礼物
		#DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/main.dialogue"),"start")

#func _physics_process(delta):

