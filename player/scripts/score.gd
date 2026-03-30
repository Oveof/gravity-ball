extends Node

var start_position = Vector2.ZERO;
var player_node = null
var start_position_x = 0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_node = get_parent().get_parent().get_parent(); 
	start_position_x = start_position[0];

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var current_position_x = player_node.position[0];

	var distance_traveled = abs(start_position_x - current_position_x) / 1000;
	self.text = "Score: " + str(snapped(distance_traveled, 1));
