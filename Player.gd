extends CharacterBody2D

const GRAVITY := 1000.0
const JUMP_VELOCITY := -420.0
const SPEED := 170.0

func _ready() -> void:
	add_to_group("Player")

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	velocity.x = SPEED

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()
