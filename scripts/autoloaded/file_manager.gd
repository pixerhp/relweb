extends Node

func initialize_filestructure() -> Error:
	if not ensure_subdirs("user://", PackedStringArray(["content"])) == OK:
		return FAILED
	if not ensure_subdirs("user://content", PackedStringArray(["projects"])) == OK:
		return FAILED
	return OK

func ensure_subdirs(dir: String, subdirs: PackedStringArray) -> Error:
	if not DirAccess.dir_exists_absolute(dir):
		if not DirAccess.make_dir_absolute(dir) == OK:
			return FAILED
	var existing_subdirs: PackedStringArray = DirAccess.get_directories_at(dir)
	for subdir in subdirs:
		if not existing_subdirs.has(subdir):
			if not DirAccess.make_dir_absolute(dir.path_join(subdir)) == OK:
				return FAILED
	return OK
