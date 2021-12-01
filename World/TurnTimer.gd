extends Timer

func _on_TurnTimer_timeout():
	Main.turn_over()
	Main.emit_signal("turn_over")
