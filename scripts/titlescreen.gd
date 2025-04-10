extends Node

func _ready():
	%TSProgramName.text = "[center]" + Globals.PROGRAM_NAME.to_upper() + "[/center]"
	%TSVersionText.text = "version " + Globals.PROGRAM_VERSION
	return
