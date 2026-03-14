extends Panel

@onready var jogar: Button = $Jogar
@onready var sair: Button = $Sair
@onready var plus_one: Button = $PlusOne

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	jogar.grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if jogar.is_hovered():
		jogar.grab_focus()
	elif sair.is_hovered():
		sair.grab_focus()
	elif plus_one.is_hovered():
		plus_one.grab_focus()

func _on_sair_pressed() -> void:
	get_tree().quit()

func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
