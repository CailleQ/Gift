extends Sprite3D

@onready var actionable = get_node("./Actionable")

func _ready():
	
	#初始化 对话脚本开始位置
	switch_dialog()


@warning_ignore("unused_parameter")
func _physics_process(delta):
	
	#从state.gd中调取can_open_ 参数进行状态判断
	var can_open_A = get_node("/root/State").can_open_A
	var can_open_B = get_node("/root/State").can_open_B

	#分别控制宝箱A与B的开启
	if name == "宝箱A" and can_open_A == 1:
		frame = 1
	if name == "宝箱B" and can_open_B == 1:
		frame = 1
		add_file(happybirthday)


func operat():
	var count = get_node("/root/State").count
	print(count) #测试 count 数值变动


func switch_dialog() :
	print(name)
	if name == "宝箱A":
		actionable.dialogue_start = "宝箱A"
	else:
		actionable.dialogue_start = "宝箱B"

#本地添加/修改txt文件
#func add_file(content):
	#var file_path = "user://%appdata%/godot/app_userdata/gift.txt"
	##%appdata%/godot/app_userdata
	#var file = FileAccess.open("user://%appdata%/godot/app_userdata/gift.txt", FileAccess.WRITE)
	#if file != null:
		#file.store_string(content)
	#else : 
		#print("can not open file")

#未成功 待修改
func add_file(content, file_path = "user://%appdata%/godot/app_userdata/gift.txt"):
	var file = FileAccess.open(file_path, FileAccess.WRITE )  # Open for writing and create if needed
	if not file:
		print("Error creating file:", file_path)
		return
	file.store_string(content)
	file.close()


#想写的话
const happybirthday = " 
阿巴阿巴阿巴阿巴阿巴阿巴
"
