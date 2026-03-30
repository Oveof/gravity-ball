extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	var speed = get_parent().get_parent().speed;
	var gravity = get_parent().get_parent().gravity_speed;
	$Speed.text = str(speed) + " m/s";
	$Gravity.text = str(snapped(gravity, 0.1)) + " m/s";
	# get_child(0).text = "test";
	# $Label.text = "test";


func _on_character_body_2d_current_speed(speed: Variant) -> void:
	pass # Replace with function body.
