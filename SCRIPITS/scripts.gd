extends Node2D

func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://robot_screen.tscn")

func _on_config_pressed() -> void:
	get_tree().change_scene_to_file("res://config.tscn")


func _on_salir_pressed() -> void:
	get_tree().quit()
