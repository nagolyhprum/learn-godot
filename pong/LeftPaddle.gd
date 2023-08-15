extends ColorRect

func _ready():
	Event.on_reset(reset)
	
func reset():
	var windowHeight = get_viewport_rect().size.y
	position.y = windowHeight / 2 - size.y / 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var windowHeight = get_viewport_rect().size.y
	if Input.is_action_pressed("LeftPaddleDown"):
		position.y += delta * Globals.SPEED
	if Input.is_action_pressed("LeftPaddleUp"):
		position.y -= delta * Globals.SPEED
	position.y = clamp(position.y, 0, windowHeight - size.y)
