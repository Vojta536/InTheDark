extends StaticBody3D

signal usingcamera
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_player_viewcam():
	if $Cam1/CamSprite.visible == true:
		$Cam1/Camera3D.make_current()
		emit_signal("usingcamera")


func _on_player_cam_1():
	$Cam1/CamSprite.visible = true
	$Cam1/ViewBox.visible = false




