extends Label

var score = 0

func right_scored():
	score = score + 1
	text = str(score)
