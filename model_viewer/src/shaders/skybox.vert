// Skybox vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec3 a_position;

out vec3 v_normal; //texcoords?

uniform mat4 u_mvp; 
uniform mat4 u_mv;

void main()
{
    vec4 pos = u_mvp * u_mv * vec4(a_position, 1.0f);
    gl_Position = pos.xyz;
    v_normal = a_position;
}
