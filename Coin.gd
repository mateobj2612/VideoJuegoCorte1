extends Area2D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		var ui := get_tree().get_first_node_in_group("UI")
		if ui != null and ui.has_method("add_coin"):
			ui.add_coin()
		queue_free()
