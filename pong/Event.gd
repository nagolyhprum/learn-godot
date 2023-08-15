extends Node

signal _left_scored
signal _right_scored
signal _reset

func on_left_scored(callable):
	connect("_left_scored", callable)
	
func on_right_scored(callable):
	connect("_right_scored", callable)
	
func on_reset(callable):
	connect("_reset", callable)
	
func left_scored():
	emit_signal("_left_scored")
	
func right_scored():
	emit_signal("_right_scored")

func _process(delta):
	if Input.is_action_pressed("Reset"):
		emit_signal("_reset")
