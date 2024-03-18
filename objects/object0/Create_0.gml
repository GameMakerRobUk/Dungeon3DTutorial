d3d_start();

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_textcoord();
my_format = vertex_format_end();

var _tex = sprite_get_uvs(spr_wall, 0);
tex_left = _tex[0];
tex_top = _tex[1];
tex_right = _tex[2];
tex_bottom = _tex[3];

my_buffer = vertex_create_buffer();
vertex_begin(my_buffer, my_format);
vertex_position_3d(my_buffer, 0, 0, 0);
vertex_texcoord(my_buffer, tex_left, tex_bottom);
vertex_position_3d(my_buffer,0, 1, 0);
vertex_texcoord(my_buffer, tex_left, tex_top);
vertex_position_3d(my_buffer, 1, 0, 0);
vertex_texcoord(my_buffer, tex_right, tex_bottom);
vertex_position_3d(my_buffer, 1, 1, 0);
vertex_texcoord(my_buffer, tex_right, tex_top);
vertex_position_3d(my_buffer, 1, 0, 1);
vertex_texcoord(my_buffer, tex_left, tex_bottom);
vertex_position_3d(my_buffer, 1, 1, 1);
vertex_texcoord(my_buffer, tex_left, tex_top);
vertex_position_3d(my_buffer, 0, 0, 1);
vertex_texcoord(my_buffer, tex_right, tex_bottom);
vertex_position_3d(my_buffer,0, 1, 1);
vertex_texcoord(my_buffer, tex_right, tex_top);
vertex_position_3d(my_buffer, 0, 0, 0);
vertex_texcoord(my_buffer, tex_left, tex_bottom);
vertex_position_3d(my_buffer,0, 1, 0);
vertex_texcoord(my_buffer, tex_left, tex_top);
vertex_end(my_buffer);

floor_buffer = vertex_create_buffer();
vertex_begin(floor_buffer, my_format);
vertex_position_3d(floor_buffer, 0, 0, 0);
vertex_texcoord(floor_buffer, tex_left, tex_bottom);
vertex_position_3d(floor_buffer,0, 0, 1);
vertex_texcoord(floor_buffer, tex_left, tex_top);
vertex_position_3d(floor_buffer, 1, 0, 0);
vertex_texcoord(floor_buffer, tex_right, tex_bottom);
vertex_position_3d(floor_buffer, 1, 0, 1);
vertex_texcoord(floor_buffer, tex_right, tex_top);
vertex_end(floor_buffer);

map[9] = "111111111111";
map[8] = "101000000001";
map[7] = "100000000001";
map[6] = "101000000001";
map[5] = "101000000001";
map[4] = "101000000001";
map[3] = "101000000001";
map[2] = "101000000001";
map[1] = "101000000001";
map[0] = "111111111111";

party_x = 1;
party_y = 1;
party_target_x = party_x;
party_target_y = party_y;

party_dir = 0;
party_target_dir = party_dir;

