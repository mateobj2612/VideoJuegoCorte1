extends Control

func _ready() -> void:
	$Label.text = "¡Llegaste a la meta!\n\nPresiona ESPACIO para jugar otra vez"

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/Main.tscn")
