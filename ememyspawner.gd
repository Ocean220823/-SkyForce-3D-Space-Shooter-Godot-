extends Node3D


@onready var main = get_tree().current_scene



var Enemy = load("res://enemy.tscn")


func spawn():

	var enemy = Enemy.instantiate()
	main.add_child(enemy)
	enemy.transform.origin = transform.origin + Vector3(randf_range(-20,25), randf_range(-15,20), 0)
func _on_timer_timeout():
	spawn() 

