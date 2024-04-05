extends CharacterBody3D

@export var SPEED = 1.5
const JUMP_VELOCITY = 3.0
#获取重力
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var direction = Vector3.FORWARD
var angular_acceleration = 7

@onready var sprite_player = $Mesh/Sprite3D
@onready var animation_tree = $AnimationTree
@onready var state_machine = animation_tree.get("parameters/playback")

@onready var actionable_finder : Area3D = $Marker3D/Actionable_Finder


func _ready():
	animation_tree.active = true
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _physics_process(delta):
	#加入重力
	if not is_on_floor():
		velocity.y -= gravity* delta
	#处理跳跃 
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y =JUMP_VELOCITY
		#
	#if Input.is_action_just_pressed("forward") ||Input.is_action_just_pressed("backward")||Input.is_action_just_pressed("left")||Input.is_action_just_pressed("right"):
		#var h_rot = $Camroot/h.global_transform.basis.get_euler().y
		#direction = Vector3((Input.get_action_strength("left")-Input.get_action_strength("right")),
				#0,
				#Input.get_action_strength("forward")-Input.get_action_strength("backward")).rotated(Vector3.UP,h_rot).normalized();
	var h_rot = $Camroot/h.global_transform.basis.get_euler().y
	direction = Vector3((Input.get_action_strength("left")-Input.get_action_strength("right")),
				0,
				Input.get_action_strength("forward")-Input.get_action_strength("backward")).rotated(Vector3.UP,h_rot).normalized();
		
	
	if direction:
		velocity.x = -direction.x * SPEED
		velocity.z = -direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x,0,SPEED)
		velocity.z = move_toward(velocity.z,0,SPEED)
		update_animation_parameters(Vector2(direction.x, direction.z))
	
	$Mesh.rotation.y = lerp_angle($Mesh.rotation.y,atan2(direction.x,direction.z),delta*angular_acceleration)
	move_and_slide()
	pick_new_state()
	flip_texture()
	
	
#传入参数为 Vector2(direction.x, direction.z)
func update_animation_parameters(move_input:Vector2):
	if(move_input != Vector2.ZERO):
		animation_tree.set("parameters/Idle/blend_position", move_input)
		animation_tree.set("parameters/Run/blend_position", move_input)
		animation_tree.set("parameters/Jump/blend_position", move_input)

func pick_new_state():
	#跳跃动画未成功
	if Input.is_action_just_pressed("jump") and is_on_floor():
		state_machine.travel("Jump")
	elif velocity != Vector3.ZERO:
		state_machine.travel("Run")
	else :
		state_machine.travel("Idle")

#左右翻转 flip_h
func flip_texture():
	if Input.is_action_just_pressed("left") and is_on_floor():
		sprite_player.flip_h = true
	elif  Input.is_action_just_pressed("right") and is_on_floor():
		sprite_player.flip_h = false

#通过actionable来检测碰撞，并执行actionable中的action函数
func _unhandled_input(event)->void:
	if Input.is_action_just_pressed("inter_action"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
