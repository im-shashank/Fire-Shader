shader_type canvas_item;

uniform sampler2D texture1: repeat_enable;
uniform vec2 scroll1 = vec2(0.0,0.5);
uniform vec2 scroll2 = vec2(0.01,0.1);
uniform sampler2D colorGradient;

void fragment() {
	float textureColor1 = texture(texture1, UV + scroll1 * TIME).r;
	float textureColor2 = texture(texture1, UV + scroll2 * TIME).r;
	float energy = textureColor1 * textureColor2 - (1.0 - UV.y) * 0.5;
	vec4 color = texture(colorGradient, vec2(energy));
	COLOR = color;
}
