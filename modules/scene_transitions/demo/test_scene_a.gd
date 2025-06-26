extends Node2D
const TEST_SCENE_B = "res://modules/scene_transitions/demo/test_scene_b.tscn"

func _on_transition_normal_pressed() -> void:
	SceneTransitionManager.transition_to_file(TEST_SCENE_B)
