#version 330
in vec3 v_pos;
in vec3 v_normal;
in vec2 v_tex;

out vec3 frag_3Dpos;
out vec3 vs_normal;
out vec3 vs_color;
out vec2 tex_coord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
  gl_Position = projection * view * model * vec4(v_pos, 1.0f);
  frag_3Dpos = vec3(model * vec4(v_pos, 1.0));
  vs_normal = normalize(mat3(transpose(inverse(model))) * v_normal);
  tex_coord = v_tex;
}
