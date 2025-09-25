extends RigidBody2D

@export var attributes = preload("res://Resources/silverBullet.tres")


func _physics_process(_delta):
	move_and_collide(attributes.velocity)
