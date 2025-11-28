class_name Item extends Node

@export var item_name: String = ""
@export var icon: Texture2D

@export var is_fruit = false
@export var is_edible = false
@export var is_knife = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("items")
	
	if is_fruit:
		add_to_group("fruits")
	if is_edible:
		add_to_group("foods")
	if is_knife:
		add_to_group("knives")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
