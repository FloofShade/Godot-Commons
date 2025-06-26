extends CanvasLayer

const TRANSITION_DURATION : float = 1.25
var _tween : Tween
func _ready() -> void:
	return
	#transition_to()

func transition_to_file(file : String):
	transition_to_packed(load(file))

func transition_to_packed(scene : PackedScene):
	if _tween and _tween.is_running():
		return
	_tween = create_tween()
	_tween.tween_method(_update_shader, 0.0, 1.0, TRANSITION_DURATION)
	_tween.tween_callback(func () -> void: get_tree().change_scene_to_packed(scene))
	_tween.tween_method(_update_shader, 1.0, 0.0, TRANSITION_DURATION)


func _update_shader(progress : float):
	($ColorRect.material as ShaderMaterial).set_shader_parameter("time", progress)
