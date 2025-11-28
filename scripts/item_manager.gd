extends Node

var item_list: Array[Item]

@onready var item_menu = get_node("ColorRect/Inventory")

var current_item: Item = null
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
func _process(delta: float) -> void:
	pass
