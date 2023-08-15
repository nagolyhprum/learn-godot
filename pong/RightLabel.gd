extends Label

var score = 0

func _ready():
	Event.on_right_scored(right_scored)
	Event.on_reset(reset)

func right_scored():
	score = score + 1
	text = str(score)

func reset():
	score = 0
	text = str(score)
