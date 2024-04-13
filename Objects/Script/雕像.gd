extends Sprite3D
@onready var actionable = get_node("./Actionable")

func _ready():
	switch_dialog()
	
	
func operat():
	pass
	
	
func switch_dialog() :
	print(name)
	if name == "雕像A":
		actionable.dialogue_start = "雕像A"
	else:
		actionable.dialogue_start = "雕像B"
