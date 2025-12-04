extends Node

var item_list: Array[Item]

@onready var item_menu = get_node("ColorRect/Inventory")
@onready var selected_item = get_node("SelectedItem")

var slots: Array[InventorySlot] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Start with empty item list
	item_list = []
	
	for child in item_menu.get_children():
		if child is InventorySlot:
			slots.append(child)
	
	var steel_knife = load("res://resources/items/steel_knife.tres")
	
	slots[0].change_item(steel_knife)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func get_current_item() -> Item:
	return selected_item.curr_item
