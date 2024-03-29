extends CharacterBody3D

const SPEED = 1.0
const JUMP_VELOCITY = 2.5
#获取重力
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var direction = Vector3.FORWARD
var angular_acceleration = 7

@onready var animation_tree = $AnimationTree

func _physics_process(delta):
	#加入重力
	if not is_on_floor():
		velocity.y -= gravity* delta
	#处理跳跃 
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y =JUMP_VELOCITY
	
	$Mesh.rotation.y = lerp_angle($Mesh.rotation.y,atan2(direction.x,direction.z),delta*angular_acceleration)
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
	move_and_slide()
	
 
##之前的脚本
#@export var animation_frame = 0
#const SPEED = 1.8
#const JUMP_VELOCITY = 3.5
#
##获取重力
#var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
#
#func _physics_process(delta):
	##加入重力
	#if not is_on_floor():
		#velocity.y -= gravity* delta
	##处理跳跃 // 可能暂时不实现跳跃功能
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y =JUMP_VELOCITY
	##获取方向 以及 处理移动
	#var input_dir = Input.get_vector("move_left","move_right","move_up","move_down")
	#var direction = (transform.basis * Vector3(input_dir.x,0,input_dir.y)).normalized()
	#if direction:
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
	#else:
		#velocity.x = move_toward(velocity.x,0,SPEED)
		#velocity.z = move_toward(velocity.z,0,SPEED)
	#move_and_slide()
