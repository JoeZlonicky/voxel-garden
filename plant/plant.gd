extends Spatial


export (Color) var color

func _ready():
	for node in [$FlowerBase, $FlowerSide, $FlowerSide2, $FlowerSide3, $FlowerSide4]:
		node.material_override = node.material_override.duplicate()
		node.material_override.albedo_color = color
