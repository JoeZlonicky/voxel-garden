extends Spatial


func _input(event):
	if event is InputEventScreenDrag:
		$CameraArm.rotate_y(event.relative.x / 100.0)
