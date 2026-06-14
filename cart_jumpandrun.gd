extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_label_pressed(KEY_R):
		get_tree().reload_current_scene()



	


func _on_area_respawn_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()





func _on_area_steigung_body_entered(body: Node2D) -> void:
	pass
