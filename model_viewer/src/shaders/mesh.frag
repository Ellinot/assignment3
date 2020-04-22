// Fragment shader
#version 150

in vec3 v_normal;
in vec3 position_eye;
in vec3 N;
in vec3 L;
in vec3 H;

out vec4 frag_color;
uniform vec3 u_light_color;
uniform vec3 u_ambient_color;
uniform vec3 u_diffuse_color;
uniform vec3 u_specular_color;
uniform vec3 u_specular_power;

const float shininess = 16.0;
float specular = 0.0;

void main()
{

    //blinn phong
    float specularAngle = pow(max(dot(a_normal, half_way), 0.0);
    specular = pow(specularAngle, shininess);
     
    vec3 lambertian = max(dot(L, N), 0.0);
    vec3 Ia = u_ambient_color;
    vec3 Id = u_diffuse_color * u_light_color * lambertian;
    vec3 Is = u_specular_color * u_light_color * dot(N, H);

    vec3 colorLinear = Ia + Id + Is;


    vec3 N = normalize(v_normal);
    frag_color = vec4(0.5 * N + 0.5, 1.0);
}
