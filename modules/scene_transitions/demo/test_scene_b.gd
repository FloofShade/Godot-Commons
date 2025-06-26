extends Node2D
var TEST_SCENE_A = load("res://modules/scene_transitions/demo/test_scene_a.tscn")

func _on_transition_normal_pressed() -> void:
	SceneTransitionManager.transition_to_packed(TEST_SCENE_A)
