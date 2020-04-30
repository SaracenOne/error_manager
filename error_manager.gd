extends Node
tool

func printl(p_line_string):
	print(p_line_string)
	
func error(p_error_string):
	print_stack()
	printerr("ERROR: " + p_error_string)
	
func fatal_error(p_error_string):
	print_stack()
	printerr("FATAL ERROR: " + p_error_string)
	if not Engine.is_editor_hint():
		get_tree().quit() #default behavior
