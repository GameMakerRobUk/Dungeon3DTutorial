d3d_set_projection_ext(party_x + 1.5, 0.5, party_y + 1.5, party_x + 1.5 + cx, 0.5, party_y + 1.5 + cy, 0, 1, 0, 45, 4/3, 0.1, 1000);
var _tmp = matrix_get(matrix_world);

shader_set(shd_light);

for (var i = 0; i < array_length_1d(map); i ++){
    var _row = map[i];
    for (var j = 1; j <= string_length(_row); j ++){
        if (string_char_at(_row, j) == "1"){
            var _matrix = matrix_build(j, 0, i, 0, 0, 0, 1, 1, 1);
            matrix_set(matrix_world, _matrix);
            vertex_submit(my_buffer, pr_trianglestrip, sprite_get_texture(spr_wall, 0));
        }else{
            var _matrix = matrix_build(j, 0, i, 0, 0, 0, 1, 1, 1);
            matrix_set(matrix_world, _matrix);
            vertex_submit(floor_buffer, pr_trianglestrip, sprite_get_texture(spr_wall, 0));
            var _matrix = matrix_build(j, 1, i, 0, 0, 0, 1, 1, 1);
            matrix_set(matrix_world, _matrix);
            vertex_submit(floor_buffer, pr_trianglestrip, sprite_get_texture(spr_wall, 0));
        }
    }
}

shader_reset();
matrix_set(matrix_world, _tmp);

