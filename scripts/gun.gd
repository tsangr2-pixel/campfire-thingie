extends Sprite2D

func _physics_process(delta: float) -> void:
	# 1. Get the mouse position
	var mouse_position = get_global_mouse_position()
	
	# 2. Make the gun look at the mouse
	look_at(mouse_position)
	
	# 3. Flip the gun so it isn't upside down when aiming left
	# Since this script is on the Gun, we check the mouse vs the Gun's position
	if mouse_position.x < global_position.x:
		flip_v = true  # Flip vertically
	else:
		flip_v = false # Return to normal
