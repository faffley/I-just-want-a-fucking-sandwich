extends Control
class_name InventorySlot

@export var item: Item

signal slot_hovered(which: InventorySlot, is_hovered: bool)
signal slot_selected(which: InventorySlot)


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

# Called every frame. 'delta' is the elapsed time since the previous frame.
#SHould display item if not displayed before.
func _process(delta: float) -> void:
	pass
