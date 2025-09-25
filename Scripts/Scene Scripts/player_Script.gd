extends CharacterBody2D

@onready var left_or_right : float
@onready var up_or_down : float
@export var attributes = preload("res://Resources/player_Attributes.tres")

func _physics_process(delta):
	if attributes.health > 0:
		left_or_right = Input.get_axis("ui_left", "ui_right")
		up_or_down = Input.get_axis("ui_up", "ui_down")
		velocity = attributes.movement_sequencing(left_or_right * attributes.speed,
		 up_or_down * attributes.speed, self.velocity, delta)
		move_and_slide()
	else:
		attributes.death_sequencing(null, "null", self)
	attributes.animation_sequencing(null)
	for child in attributes.weaponArray:
		child.emit_projectile(self, "res://Scenes/projectile_Scene.tscn")
