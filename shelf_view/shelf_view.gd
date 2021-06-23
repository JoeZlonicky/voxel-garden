extends Spatial


const plant_view_scene = preload("res://plant_view/plant_view.tscn")


func _on_Button_pressed():
	var _ret = get_tree().change_scene_to(plant_view_scene)
