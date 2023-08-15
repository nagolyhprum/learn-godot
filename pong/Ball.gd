extends ColorRect

var velocity = Vector2(Globals.SPEED, Globals.SPEED)

func _ready():
	Event.on_reset(reset)
	
func reset():
	var windowWidth = get_viewport_rect().size.x
	var windowHeight = get_viewport_rect().size.y
	position.x = windowWidth / 2 - size.x / 2
	position.y = windowHeight / 2 - size.y / 2

func _process(delta):
	var windowWidth = get_viewport_rect().size.x
	var windowHeight = get_viewport_rect().size.y
	
	position.x += velocity.x * delta
	position.y += velocity.y * delta
	
	if position.y <= 0 and velocity.y < 0:
		velocity.y = -velocity.y
		
	if position.y + size.y >= windowHeight and velocity.y > 0:
		velocity.y = -velocity.y
		
	if position.x + size.x >= windowWidth:
		reset()
		velocity.x = -velocity.x
		Event.left_scored()
		
	if position.x <= 0:
		reset()
		velocity.x = -velocity.x
		Event.right_scored()
