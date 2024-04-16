extends Sprite3D

@onready var actionable = get_node("./Actionable")
var done = 0

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
	if name == "宝箱B" and can_open_B == 1 and done == 0 :
		frame = 1
		done = 1
		print(done)
		add_file(happybirthday)


func operat():
	var count = get_node("/root/State").count
	#print(count) #测试 count 数值变动


func switch_dialog() :
	#print(name)
	if name == "宝箱A":
		actionable.dialogue_start = "宝箱A"
	else:
		actionable.dialogue_start = "宝箱B"

#本地添加/修改txt文件
#成功 待修改
func add_file(content):
	#桌面位置：  %USERPROFILE%/desktop   "%USERPROFILE%/desktop/gift"
	#	var exit_code = OS.execute("CMD.exe", ["/C", "C:/Users/Caille/Desktop/test/", "echo hello world >> C:/Users/Caille/Desktop/test/test.txt"], output, true, true)
	var output = []
	#print("执行中")
	var exit_code = OS.execute("CMD.exe", ["/C", "echo hello world >>%USERPROFILE%/desktop/gift/test.txt"],output,true)
	#print("执行完毕")
	if exit_code == OK:
		for line in output:
			print(line)


#想写的话
const happybirthday = " 
echo hello world >>%USERPROFILE%/desktop/gift/test.txt
"
