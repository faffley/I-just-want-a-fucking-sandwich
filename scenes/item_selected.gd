extends Sprite2D

signal item_used(item)

signal item_clicked(item, position)

var curr_item: Item = null
	#set(new_item):
		#curr_item = new_item
		#if new_item != null:
			#texture = new_item.icon
	#get():
		#return curr_item
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position = get_viewport().get_mouse_position()

	
func _input(event):
	
	if event is InputEventMouseButton and curr_item != null:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			item_clicked.emit(curr_item, position)
			curr_item = null
			hide()
			set_process(false)
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			#Not yet sure what to do with this...only for eating?
			item_used.emit(curr_item)
			hide()
			set_process(false)


func _on_slot_selected(which: InventorySlot):
	if which.item == null:
		return
	
	curr_item = which.item
	self.texture = curr_item.icon
	show()
	set_process(true)
