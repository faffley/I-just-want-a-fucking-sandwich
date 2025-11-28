extends Node

var item_list: Array[Item]

@onready var item_menu = get_node("ColorRect/HBoxContainer")

var current_item: Item = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Start with empty item list
	item_list = []
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
