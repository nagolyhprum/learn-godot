extends ColorRect

var velocity = Vector2(Globals.SPEED, Globals.SPEED)

func _process(delta):
	var leftLabel = get_node("../LeftLabel")
	var rightLabel = get_node("../RightLabel")
	var windowWidth = get_viewport_rect().size.x
	var windowHeight = get_viewport_rect().size.y
	
	position.x += velocity.x * delta
	position.y += velocity.y * delta
	
	if position.y <= 0 and velocity.y < 0:
		velocity.y = -velocity.y
		
	if position.y + size.y >= windowHeight and velocity.y > 0:
		velocity.y = -velocity.y
		
	if position.x + size.x >= windowWidth:
		position.x = windowWidth / 2 - size.x / 2
		position.y = windowHeight / 2 - size.y / 2
		velocity.x = -velocity.x
		leftLabel.left_scored()
		
	if position.x <= 0:
		position.x = windowWidth / 2 - size.x / 2
		position.y = windowHeight / 2 - size.y / 2
		velocity.x = -velocity.x
		rightLabel.right_scored()
