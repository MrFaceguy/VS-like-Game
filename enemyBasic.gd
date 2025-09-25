extends CharacterBody2D

@onready var vision = $"AI Area Vision"

@onready var moveX : float
@onready var moveY : float


@export var enemy_Target : Node2D


@export var attributes = preload("res://player_Attributes.tres")


func _physics_process(delta):
	if attributes.health > 0:
		target_finding(enemy_Target)
		velocity = attributes.movement_sequencing(moveX * attributes.speed, moveY, self.velocity, delta)
		move_and_slide()
	else:
		attributes.death_sequencing(null, "null", self)
	attributes.animation_sequencing(null)

func target_finding(enemy):
	if enemy != null:
		moveX = sign(enemy.position.x - self.position.x)

func _on_ai_area_vision_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player_Character"):
		enemy_Target = body
