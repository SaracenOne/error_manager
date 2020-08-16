tool
extends EditorPlugin

func _init():
	print("Initialising ErrorManager plugin")

func get_name() -> String:
	return "ErrorManager"


func _notification(p_notification: int):
	match p_notification:
		NOTIFICATION_PREDELETE:
			print("Destroying ErrorManager plugin")


func _enter_tree() -> void:
	add_autoload_singleton("ErrorManager", "res://addons/error_manager/error_manager.gd")


func _exit_tree() -> void:
	remove_autoload_singleton("ErrorManager")
