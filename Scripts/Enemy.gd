extends CharacterBody3D

@onready var nav_agent = $NavigationAgent3D
var SPEED = 2.0
func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = (next_location - current_location).normalized() * SPEED
	velocity = velocity.move_toward(new_velocity,.25)
	move_and_slide()
	
func update_target_location(target_location):
	nav_agent.set_target_position(target_location)


func _on_navigation_agent_3d_target_reached():
	print("jeblizko")
