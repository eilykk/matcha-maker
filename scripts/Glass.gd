extends Node2D

@onready var interaction_area: ClickInteractionArea = $ClickInteractionArea
@onready var sprite = $DrinkSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	sprite.visible = false
	interaction_area.can_interact = false
	Globals.objects["glass"] = true
	Globals.test_ready()
