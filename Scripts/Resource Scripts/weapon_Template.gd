extends Resource
class_name Weapon_Attributes

@export var direction : float
@export var projectile_type : Projectile_Attributes
@export var shots_per_second : int

func emit_projectile(scene_root, projectile):
	var newproj = load(projectile)
	
	scene_root.add_child(newproj.instantiate())
