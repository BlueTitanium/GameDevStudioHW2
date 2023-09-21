/// @description Insert description here
// You can write your code in this editor

function initialize_particle(part, color1, color2){
	part_type_shape(part, pt_shape_sphere);
	part_type_size(part, 0.30, 0.30, 0, 0);
	part_type_scale(part, 1, 1);
	part_type_orientation(part, 0, 0, 0, 0, 0);
	part_type_color2(part, color1, color2);
	part_type_alpha2(part, .5, 0);
	part_type_blend(part, 1);
	part_type_life(part, 30, 30);
	part_type_speed(part, 0, 0, 0, 0);
	part_type_direction(part, 0, 360, 0, 0);
	part_type_gravity(part, 0, 0);
}

global.ps_above = part_system_create();

//enemy bullet
global.pt_e_b = part_type_create();
initialize_particle(global.pt_e_b, c_red, c_purple);

//reg bullet
global.pt_c_b = part_type_create();
initialize_particle(global.pt_c_b, c_green,c_lime);

//fast bullet
global.pt_c_b_f = part_type_create();
initialize_particle(global.pt_c_b_f, c_blue, #32a89b);
//homing bullet
global.pt_c_b_h = part_type_create();
initialize_particle(global.pt_c_b_h, #9987ff, #9987ff);
//piercing bullet
global.pt_c_b_p = part_type_create();
initialize_particle(global.pt_c_b_p, c_yellow, #faf8c3);
//shield bullet
global.pt_c_b_s = part_type_create();
initialize_particle(global.pt_c_b_s, #ffffff,c_gray);