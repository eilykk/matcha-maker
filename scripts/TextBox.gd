extends CanvasLayer

@export var dialog_state = "NONE"

@onready var textbox_container = $TextboxContainer
@onready var text_container = $TextContainer
@onready var start = $TextContainer/HBoxContainer/Start
@onready var text = $TextContainer/HBoxContainer/Text
@onready var end = $TextContainer/HBoxContainer/End

var total_characters = 0
var text_speed = 1
var is_typing = false

# Called when the node enters the scene tree for the first time.
func _ready():
	hide_textbox()
	start_typing()
	add_text("Welcome to your kitchen! Let's make some matcha! ( Press space to continue )")

func start_typing():
	is_typing = true
	dialog_state = "READING"
	
func _process(_delta):
	if is_typing:
		if text.visible_characters < total_characters:
			text.visible_characters += text_speed
		else:
			is_typing = false
			dialog_state = "DONE"
			end.text = "v"

func hide_textbox():
	start.text = ""
	text.text = ""
	end.text = ""
	textbox_container.hide()
	text_container.hide()
	
func show_textbox():
	start.text = "*"
	textbox_container.show()
	text_container.show()

func add_text(next_text):
	text.text = next_text
	total_characters = next_text.length()
	show_textbox()

func _input(event):
	if event.is_action_pressed("space") && dialog_state == "DONE":
		dialog_state = "NONE"
		hide_textbox()
