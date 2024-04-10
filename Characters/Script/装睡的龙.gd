extends Sprite3D

@onready var player = get_node("../Player/Player")

func operat():
	#尝试修改Player的移速 ->成功
	#注意 Player Node3D节点 -> Player CharachterBody3D
	#player.SPEED = 8.0
	pass
