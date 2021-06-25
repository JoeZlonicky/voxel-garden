extends Spatial


const plant_view_scene = preload("res://plant_view/plant_view.tscn")
const RAYCAST_DISTANCE = 100.0

onready var camera = $Camera


func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		cast_ray(event.position)
		

func _on_Button_pressed():
	var _ret = get_tree().change_scene_to(plant_view_scene)


func cast_ray(mouse_position):
	var ray_direction = camera.project_ray_normal(mouse_position)
	var ray_origin = camera.project_ray_origin(mouse_position)
	var space_state = get_world().direct_space_state
	var result = space_state.intersect_ray(ray_origin,
		ray_origin + ray_direction * RAYCAST_DISTANCE)
	if !result:
		return
		
	var obj = result["collider"]
	if !obj.is_in_group("shelf_plant"):
		return
	
	plant_selected(obj)
	
func plant_selected(plant):
	print("Plant: ", plant)
