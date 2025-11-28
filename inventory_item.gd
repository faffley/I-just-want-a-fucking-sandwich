extends Node
class_name InventoryItem

@export var item: Item = null
@onready var sprite: Sprite2D

func _init(_item: Item):
	item = _item
	sprite = Sprite2D.new()
	add_child(sprite)
	sprite.texture = item.icon
	sprite.centered = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#sprite.texture = item.icon


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
