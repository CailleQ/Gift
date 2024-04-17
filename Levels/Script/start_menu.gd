extends Node2D


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Levels/Test.tscn")


func _on_quit_pressed():
	get_tree().quit()
	#add_file()



func add_file():
	#桌面位置：  %USERPROFILE%/desktop   "%USERPROFILE%/desktop/gift"
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
