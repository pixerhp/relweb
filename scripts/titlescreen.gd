extends Node

func _ready():
	if not Globals.PROGRAM_NAME.is_empty():
		%TSProgramName.text = "[center]" + Globals.PROGRAM_NAME.to_upper() + "[/center]"
	if not Globals.PROGRAM_VERSION.is_empty():
		%TSVersionText.text = "version " + Globals.PROGRAM_VERSION
	
	return


func _on_button_file_loc_pressed():
	OS.shell_show_in_file_manager(ProjectSettings.globalize_path("user://"))
	return

func _on_button_quit_pressed():
	get_tree().quit()
	return
