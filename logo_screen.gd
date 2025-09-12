extends Node2D
func _ready():
	# Cuando arranca, el Timer ya empieza solo (Autostart activado)
	pass

func _on_Timer_timeout():
	# Aquí pondrás el cambio a la siguiente pantalla (ej. RobotScreen)
	get_tree().change_scene_to_file("res://RobotScreen.tscn")
