extends ColorRect

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var windowHeight = get_viewport_rect().size.y
	if Input.is_action_pressed("RightPaddleDown"):
		position.y += delta * Globals.SPEED
	if Input.is_action_pressed("RightPaddleUp"):
		position.y -= delta * Globals.SPEED
	position.y = clamp(position.y, 0, windowHeight - size.y)
