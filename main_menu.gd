extends Control


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_settings_3_pressed() -> void:
	print("Settings pressed")


func _on_exit_2_pressed() -> void:
	get_tree().quit()
