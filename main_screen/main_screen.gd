extends Control

@export var menu_button_scene: PackedScene
@onready var vb_menu = $VB/VBMenu

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_menu_item_selected.connect(on_menu_item_selected)
	setup_grid()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_menu_item_selected(item_num: int) -> void:
	pass
	#show_game(true)
	#SoundManager.play_sound(sound, SoundManager.SOUND_IN_GAME)

func create_level_button(item_number: int) -> void:
	var new_button = menu_button_scene.instantiate()
	vb_menu.add_child(new_button)
	new_button.set_menu_item(item_number)

func setup_grid() -> void:
	for button in GameManager.BUTTONS:
		create_level_button(button)
