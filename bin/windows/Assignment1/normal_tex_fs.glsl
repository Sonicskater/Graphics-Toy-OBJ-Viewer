#version 330 core
out vec4 fragColor;

in Data {
	vec3 position;
	vec3 normal;
} data;

uniform float tex;

uniform sampler2D texture;

void main()
{
    fragColor = vec4(data.normal, 1.0);
}