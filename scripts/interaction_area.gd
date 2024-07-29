extends Area2D
class_name InteractionArea

@export var action_name : String = "interact"
@export var can_interact : bool = true

var interact: Callable = func():
	pass

func _on_body_entered(_body):
	if ready:
		InteractionManager.register_area(self)
	
func _on_body_exited(_body):
	if ready:
		InteractionManager.unregister_area(self)