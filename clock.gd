extends Node2D

# hours pointer
export (NodePath) var pivot_hours_path
onready var pivot_hours = get_node(pivot_hours_path)

# minutes pointer
export (NodePath) var pivot_minutes_path
onready var pivot_minutes = get_node(pivot_minutes_path)

# seconds pointer
export (NodePath) var pivot_seconds_path
onready var pivot_seconds = get_node(pivot_seconds_path)

var radian_seconds = null
var radian_minutes = null
var radian_hours = null

func _ready():
	set_process(true)
	
func _process(delta):
	radian_seconds = OS.get_time()["second"] * (PI/30)
	radian_minutes = OS.get_time()["minute"] * (PI/30)
	radian_hours = OS.get_time()["hour"] * (PI/6)
	

	pivot_seconds.set_rotation(radian_seconds)
	pivot_minutes.set_rotation(radian_minutes)
	pivot_hours.set_rotation(radian_hours)


