extends CharacterBody2D

var speed = 2;
var gravity_direction = 1;
var gravity_speed = Vector2.DOWN * 1;
var charged_speed = Vector2.DOWN * 1;

const BASE_GRAVITY_VECTOR = Vector2.DOWN * 1;
const GRAVITY_MULTIPLIER = 0.02

func get_input():
	if Input.is_action_just_pressed("activate_gravity"):
		charged_speed = BASE_GRAVITY_VECTOR;

	if Input.is_action_just_released("activate_gravity"):
		gravity_direction *= -1;
		gravity_speed = charged_speed;

	if Input.is_action_pressed("activate_gravity"):
		charged_speed += BASE_GRAVITY_VECTOR * GRAVITY_MULTIPLIER;



func _physics_process(delta):
	get_input()
	var gravity_vec = gravity_speed * gravity_direction;
	velocity = velocity.move_toward(Vector2.RIGHT, speed) + gravity_vec;
	move_and_collide(velocity)
