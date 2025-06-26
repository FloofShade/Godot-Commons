shader_type canvas_item;
uniform float time;
void fragment() {
	// Called for every pixel the material is visible on.
		vec2 screen_size = SCREEN_PIXEL_SIZE;
		float aspect_ratio = (screen_size.y / screen_size.x);
		vec2 uv = vec2((UV.x - 0.5) * aspect_ratio, UV.y - 0.5);
		COLOR.a = float(distance(vec2(uv.x, uv.y), vec2(0)) > abs(time - 1.0)*aspect_ratio);
}
