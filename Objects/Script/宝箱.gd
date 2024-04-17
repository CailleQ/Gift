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
	var count = get_node("/root/State").count

	#分别控制宝箱A与B的开启
	if name == "宝箱A" and can_open_A == 1:
		frame = 1
	if name == "宝箱B" and can_open_B == 1 and done == 0 :
		frame = 1
		done = 1
		add_file_B()
	if name == "宝箱B" and count == 20 :
		add_file_hiden()

func operat():
	var count = get_node("/root/State").count
	#print( count) #测试 count 数值变动


func switch_dialog() :
	#print(name)
	if name == "宝箱A":
		actionable.dialogue_start = "宝箱A"
	else:
		actionable.dialogue_start = "宝箱B"

#成功 我tm硬编码
func add_file_B():
	#桌面位置：  %USERPROFILE%/desktop   
	var output = []
	OS.execute("CMD.exe", ["/C", "echo 祝你生日快乐！ >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 又是一年过去嘞，我猜 你没猜到今年的礼物是这样的, >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 今年的小游戏变成3D的啦，我一开始都没想到会用掉120多个小时, >> %USERPROFILE%/desktop/Happy_Birthday.txt"], output, true)
	OS.execute("CMD.exe", ["/C", "echo 总是这里修修那里改改,再加点新功能啥的,但总感觉还能再打磨打磨, >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 但是时间不够啦,你生日来得真快，今年就先这样交到你手上啦! >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 别忘了我还给你准备了一场赛博烟花,应该就在文件夹里一起给你的那个, >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 推荐打开后按一下F11全屏欣赏喔. >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 我还想送你一个jellycat的小玩偶 >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 大概长这样: https://eu.jellycat.com/amuseabean-unicorn/ >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 但我实在对自己对玩偶的品味没什么自信 >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 总觉得真选这个要被你嘲笑 >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 你要是愿意的话我们可以一起选一个 >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 总之 祝你又一年的生日快乐! >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 真是辛苦我自己了 哟系哟系哟系 >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo -------------------------------------- >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo -----------2024/04/17/2:05------------ >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo -------------------------------------- >> %USERPROFILE%/desktop/Happy_Birthday.txt"],output,true)

func add_file_hiden():
	#桌面位置：  %USERPROFILE%/desktop  
	var output = []
	OS.execute("CMD.exe", ["/C", "echo 我想给你切水果，剥桔子的白丝 >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 我想跟你分享水煮蛋，你吃蛋黄我要蛋白 >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 我想跟你一直一直在一起！ >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo 虽然我觉得你大概率是看不到这个文件的 >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo  >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo  >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo  >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo  >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo  >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo  >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
	OS.execute("CMD.exe", ["/C", "echo  >> %USERPROFILE%/desktop/file_hiden.txt"],output,true)
