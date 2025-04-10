extends Node

func _ready():
	if not Globals.PROGRAM_NAME.is_empty():
		%TSProgramName.text = "[center]" + Globals.PROGRAM_NAME.to_upper() + "[/center]"
	if not Globals.PROGRAM_VERSION.is_empty():
		%TSVersionText.text = "version " + Globals.PROGRAM_VERSION
	
	return
