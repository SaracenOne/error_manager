tool
extends EditorPlugin

func get_name(): 
	return "ErrorManager"

func _enter_tree():
	add_autoload_singleton("ErrorManager", "res://addons/error_manager/error_manager.gd")
	
func _exit_tree():
	remove_autoload_singleton("ErrorManager")