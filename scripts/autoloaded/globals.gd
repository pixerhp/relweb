extends Node

func _ready():
	if FM.initialize_filestructure() == FAILED:
		push_error("Failed to initialize/ensure core filestructure.")
	return

func _process(_delta):
	# Process inputs that should work globally.
	if Input.is_action_just_pressed("fullscreen_toggle"):
		if (DisplayServer.window_get_mode() == 0):
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	return
