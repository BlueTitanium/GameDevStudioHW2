/// @description Insert description here
// You can write your code in this editor
global.ps_above = part_system_create();

//enemy bullet

global.pt_e_b = part_type_create();
part_type_shape(global.pt_e_b, pt_shape_sphere);
part_type_size(global.pt_e_b, 0.30, 0.30, 0, 0);
part_type_scale(global.pt_e_b, 1, 1);

part_type_orientation(global.pt_e_b, 0, 0, 0, 0, 0);

part_type_color2(global.pt_e_b, c_red, c_purple);

part_type_alpha2(global.pt_e_b, 1, 0);

part_type_blend(global.pt_e_b, 1);

part_type_life(global.pt_e_b, 30, 30);

part_type_speed(global.pt_e_b, 0, 0, 0, 0);

part_type_direction(global.pt_e_b, 0, 360, 0, 0);

part_type_gravity(global.pt_e_b, 0, 0);


