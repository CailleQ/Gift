extends Area3D

@export var dialogue_resource : DialogueResource
@export var dialogue_start : String = "start"

@onready var parent = get_node("..")

const Balloon = preload("res://Dialogue/balloon.tscn")

func action()->void:
	#示例对话框
	#DialogueManager.show_example_dialogue_balloon(dialogue_resource,dialogue_start)
	
	#自定义对话框 -> "res://Dialogue/balloon.tscn"
	#此路径下的	
	var balloon: Node = Balloon.instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(dialogue_resource,dialogue_start)


	#强制要求 父节点拥有operat()函数
	#勿忘添加，无事件可写 便加pass
	parent.operat()
