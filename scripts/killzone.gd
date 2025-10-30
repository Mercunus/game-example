extends Area2D


@onready var timer: Timer = $Timer


func _on_body_entered(body):
	print("You died!") 
	#body.get_node("AnimatedSprite2D").play("dead")
	#await(get_tree().create_timer(1.0).timeout)
	Engine.time_scale = 0.5
	timer.start()
	body.get_node("CollisionShape2D").queue_free()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
