extends Resource
class_name creatureAttributes

@export var creature_name : String
@export var health : float
@export var speed : float
@export var weaponArray : Array
@export var drops : Array



func movement_sequencing(moveX, moveY, velocity, delta):
	velocity.x = moveX
	velocity.y = moveY
	return velocity



func animation_sequencing(character_state):
	pass
