extends "res://plant/plant.gd"


func set_color(new_color):
	var new_material = $Flower.get("material/0").duplicate()
	new_material.albedo_color = new_color
	$Flower.set("material/0", new_material)
