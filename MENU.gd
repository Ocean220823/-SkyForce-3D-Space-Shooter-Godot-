extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://3D Space Shooter Assets/Blender Imports/main.tscn")


func _on_options_pressed():
	pass 


func _on_quit_pressed():
	get_tree().quit()
