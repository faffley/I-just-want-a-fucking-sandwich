extends Control
class_name InventorySlot

@export var item: Item

signal slot_hovered(which: InventorySlot, is_hovered: bool)
signal slot_selected(which: InventorySlot)

@onready var rect = get_node("TextureRect")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("inventory_slots")
	


# When slot is pressed
func _on_texture_button_gui_input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			slot_selected.emit(
				self
			)

func _on_texture_button_mouse_entered():
	slot_hovered.emit(self, true)

func _on_texture_button_mouse_exited():
	slot_hovered.emit(self, false)
	
func change_item(new_item: Item)->Item:
	var old_item = pop_item()
	item = new_item
	if item:
		var inv_item = InventoryItem.new(item)
		rect.add_child(inv_item)
	return old_item
	
func pop_item()->Item:
	var old_item = item
	if item:
		item = null
		if rect.has_node("InventoryItem"):
			var inv_item = rect.get_node("InventoryItem")
			rect.remove_child(inv_item)
			inv_item.free()
	
	return old_item

# Called every frame. 'delta' is the elapsed time since the previous frame.
#SHould display item if not displayed before.
func _process(delta: float) -> void:
	pass
	
