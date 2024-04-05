extends Area3D

@export var dialogue_resource : DialogueResource
@export var dialogue_start : String = "start"
@onready var parent = get_node("..")

#@".."

func action()->void:
	DialogueManager.show_example_dialogue_balloon(dialogue_resource,dialogue_start)
	#强制要求 父节点拥有operat()函数
	#勿忘添加，无事件可写 便加pass
	parent.operat()
