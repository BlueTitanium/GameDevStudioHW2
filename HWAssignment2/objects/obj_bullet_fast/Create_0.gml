/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function spawn_trail(){
	var _p_dir = point_direction(x,y,xprev,yprev);

	part_type_orientation(global.pt_c_b_f, _p_dir, _p_dir, 0, 0, 0);

	part_particles_create(global.ps_above,x,y,global.pt_c_b_f,1);	
}