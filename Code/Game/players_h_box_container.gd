extends HBoxContainer
const PLAYER_VIEW = preload("res://Game/player_sub_viewport_container.tscn")
@onready var game: Game = $"../.."

func _ready() -> void:
	for i in range(game.nb_players):
		var player_sub_viewport_container: PlayerSubViewportContainer = PLAYER_VIEW.instantiate()
		add_child(player_sub_viewport_container)
