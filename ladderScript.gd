var can_climb = false

func _on_ladder_body_entered(body):
	can_climb = true


func _on_ladder_body_exited(body):
	can_climb = false
