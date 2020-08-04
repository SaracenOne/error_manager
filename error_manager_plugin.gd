tool
extends EditorPlugin


func get_name() -> String:
	return "ErrorManager"


func _enter_tree() -> void:
	add_autoload_singleton("ErrorManager", "res://addons/error_manager/error_manager.gd")


func _exit_tree() -> void:
	remove_autoload_singleton("ErrorManager")
