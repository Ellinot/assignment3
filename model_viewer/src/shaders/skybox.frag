// Skybox fragment shader
#version 150

in vec2 v_normal;

out vec4 frag_color;

uniform samplerCube skybox;

void main()
{
    frag_color = texture(skybox, v_normal);
}