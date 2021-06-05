shader_type spatial;

uniform float divisions;
uniform vec4 col;

void vertex() {
	COLOR = col;
}

void fragment () {
	ALBEDO = col.rgb;
}

void light() {
	float shadeIntensity = ceil(dot(NORMAL, LIGHT) * divisions)/divisions;
	DIFFUSE_LIGHT = col.rgb * shadeIntensity;
}