extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea

# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _process(_delta):
	if Globals.game_ready:
		interaction_area.can_interact = true

func _on_interact():
	# Now done with the gathering portion, we can move on to the scene we make the matcha.
	get_tree().change_scene_to_file("res://scenes/counter.tscn")
