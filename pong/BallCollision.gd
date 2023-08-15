extends Area2D

func _ready():
	connect("area_entered", _on_area_entered)

func _on_area_entered(area):
	var ball = get_node("..")
	var parent = area.get_node("..")
	if parent.get_name() == "LeftPaddle" and ball.velocity.x < 0:
		ball.velocity.x = -ball.velocity.x
	if parent.get_name() == "RightPaddle" and ball.velocity.x > 0:
		ball.velocity.x = -ball.velocity.x
