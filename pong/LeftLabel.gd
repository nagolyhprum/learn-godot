extends Label

var score = 0

func _ready():
	Event.on_left_scored(left_scored)
	Event.on_reset(reset)

func left_scored():
	score = score + 1
	text = str(score)

func reset():
	score = 0
	text = str(score)
