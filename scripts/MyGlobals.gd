extends Node
class_name MyGlobals

@export var game_ready: bool = false

@export var objects = {"glass":false, "whisk":false, "spoon":false, "teapot":false, "matcha":false, "strainer":false, 
"milk":false, "ice":false, "cup":false}

func test_ready():
	if (Globals.objects["glass"] == true && Globals.objects["whisk"] == true && Globals.objects["spoon"] == true && 
	Globals.objects["teapot"] == true && Globals.objects["matcha"] == true && Globals.objects["strainer"] == true && 
	Globals.objects["milk"] == true && Globals.objects["ice"] == true && Globals.objects["cup"] == true):
		Globals.game_ready = true

