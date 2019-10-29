#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform float tex;

out Data
{
    vec3 position;
    vec3 normal;
} data;



uniform vec3 lightPos;

void main()
{
    data.position = vec3(model * vec4(position, 1.0));
	data.normal = mat3(transpose(inverse(model))) * normal; 
	
    gl_Position = projection * view * vec4(data.position, 1.0);
}