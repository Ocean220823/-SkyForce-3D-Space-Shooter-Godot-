extends CharacterBody3D
@onready var score = $UI/GameUI/Score

var velo = Vector3()
func _physics_process(delta):
	velocity = velo
	move_and_slide()
	
func _on_child_entered_tree(body):
	if body.is_in_group("Enemies"):
		score+=5 

func _on_area_3d_body_entered(body):
	if body.is_in_group("Enemies"):
		body.queue_free()
		
		queue_free()

