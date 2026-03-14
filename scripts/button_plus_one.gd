extends Button

@onready var label: Label = $"../../Label"

var count = 0
var texts = ["Olá Mundo", "Olá Mumbo", "Olá Bumbo", "Olá Jumbo", "Olá Dumbo", "Alô meu povo", "Salve, salve"]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_down() -> void:
	count += 1
	if count >= texts.size():
		count = 0
	label.text = texts[count]
	pass # Replace with function body.


func _on_button_2_button_down() -> void:
	pass # Replace with function body.
