extends Area2D
class_name ClickInteractionArea

@export var action_name : String = "collect"
@export var can_interact : bool = true

var interact: Callable = func():
	pass

func _on_mouse_entered():
	ClickInteractionManager.register(self)


func _on_mouse_exited():
	ClickInteractionManager.unregister(self)
