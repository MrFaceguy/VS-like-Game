extends CharacterBody2D

@onready var left_or_right : int

@export var attributes = preload("res://player_Attributes.tres")

func _physics_process(delta):
	if attributes.health > 0:
		left_or_right = Input.get_axis("ui_left", "ui_right")
		velocity = attributes.movement_sequencing(left_or_right * attributes.speed,
		 0, self.velocity, delta)
		move_and_slide()
	else:
		attributes.death_sequencing(null, "null", self)
	attributes.animation_sequencing(null)
