extends CanvasLayer

var coins := 0

func _ready() -> void:
	add_to_group("UI")
	update_label()

func add_coin() -> void:
	coins += 1
	update_label()

func update_label() -> void:
	$Label.text = "Monedas: " + str(coins)
