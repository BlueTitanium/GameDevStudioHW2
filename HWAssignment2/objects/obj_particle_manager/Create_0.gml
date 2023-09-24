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
function initialize_particle_ex(_part, color1, color2){
	part_type_shape(_part, pt_shape_disk);
	part_type_size(_part, 1, 1, 0, 0);
	part_type_scale(_part, 0.5, 0.1);
	part_type_speed(_part, 3, 2, 0, 0);
	part_type_direction(_part, 0, 360, 0, 0);
	part_type_gravity(_part, 0, 270);
	part_type_orientation(_part, 0, 0, 0, 0, true);
	part_type_colour2(_part, color1, color2);
	part_type_alpha3(_part, 1, 1, 0);
	part_type_blend(_part, false);
	part_type_life(_part, 10, 20);
}
function initialize_particle_s(_part, color1, color2){
	part_type_shape(_part, pt_shape_line);
	part_type_size(_part, 1, 1, 0, 0);
	part_type_scale(_part, 0.5, 0.1);
	part_type_speed(_part, 3, 2, 0, 0);
	part_type_direction(_part, 0, 360, 0, 0);
	part_type_gravity(_part, 0, 270);
	part_type_orientation(_part, 0, 0, 0, 0, true);
	part_type_colour3(_part, $0000FF, $0C0C35, $FF1900);
	part_type_alpha3(_part, 1, 1, 0);
	part_type_blend(_part, false);
	part_type_life(_part, 10, 20);
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



_ptype1 = part_type_create();
initialize_particle_ex(_ptype1, c_orange, c_red);
_ptype2 = part_type_create();
initialize_particle_ex(_ptype2, c_orange, c_green);

function emit_explosion(_type, _x,_y){
	var _pemit1 = part_emitter_create(global.ps_above);
	part_emitter_region(global.ps_above, _pemit1, _x-16, _x+16, _y-16, _y+16, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps_above, _pemit1, _type, 100);
}

_ptype3 = part_type_create();
initialize_particle_s(_ptype3, $0000FF, $0C0C35);
_ptype4 = part_type_create();
initialize_particle_s(_ptype4, $FFFFFF, $FFC6C6);

function emit_spark(_type, _x,_y){
	var _pemit1 = part_emitter_create(global.ps_above);
	part_emitter_region(global.ps_above, _pemit1, _x-2, _x+2, _y-2, _y+2, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps_above, _pemit1, _type, 100);
}