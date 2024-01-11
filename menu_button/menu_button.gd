extends TextureButton

@onready var label = $Label

var _menu_item

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_menu_item(item_num: int) -> void:
	_menu_item = item_num
	var item_data =  GameManager.BUTTONS[_menu_item]
	label.text = "%s" % [item_data.text]


func _on_pressed():
	SignalManager.on_menu_item_selected.emit(_menu_item)
