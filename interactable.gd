extends Sprite2D
class_name Interactable

signal on_clicked(which)

var interactable_items = Array[Item]

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Use an interaction manager to figure this out
			on_clicked.emit(self)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
