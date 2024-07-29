extends Node2D


@onready var interaction_area: ClickInteractionArea = $ClickInteractionArea

# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _process(_delta):
	if Globals.objects["glass"] == true && Globals.objects["whisk"] == true:
		interaction_area.can_interact = true

func _on_interact():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
