// Vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;
layout(location = 1) in vec3 a_normal;

out vec3 v_normal;

out vec3 position_eye;
out vec3 N;
out vec3 L;
out vec3 H;

uniform mat4 u_mvp;
uniform vec3 u_light_position;


void main()
{

     // Transform the vertex position to view space (eye coordinates)
    position_eye = vec3(u_mv * a_position);

    // Calculate the view-space normal
    N = normalize(mat3(u_mv) * a_normal);

    // Calculate the view-space light direction
    L = normalize(u_light_position - position_eye);

    //half way vector
    H = normalize(L + position_eye) //light direction + view direction
    

    v_normal = a_normal;
    gl_Position = u_mvp * a_position;
}
