extends Area2D

@onready var game_manager: Node = %GameManager

func _on_body_entered( _body):
	#print("+1 coin!")
	game_manager.add_point()
	queue_free()
