extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $GlassCabinetHighlight


# Called when the node enters the scene tree for the first time.
func _ready():
	if Globals.objects["whisk"] == true:
		interaction_area.can_interact = false
		sprite.visible = false
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	sprite.visible = false
	interaction_area.can_interact = false
	get_tree().change_scene_to_file("res://scenes/glass_cabinet_view.tscn")
